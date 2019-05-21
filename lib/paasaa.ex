defmodule Paasaa do
  @moduledoc """
  Detects language by analyzing symbol patterns and trigram occurrence in a string.
  """

  @script_expressions Paasaa.Data.fetch_script_expressions!()

  @trigrams Paasaa.Data.fetch_trigrams!()

  @languages Paasaa.Data.fetch_languages!()

  @max_difference 300

  @type options :: [
          min_length: non_neg_integer(),
          max_length: non_neg_integer(),
          only: [String.t()],
          ignore: [String.t()]
        ]

  @default_options [
    min_length: 10,
    max_length: 2048,
    only: [],
    ignore: []
  ]

  @doc """
  Detects a language. Returns a `Paasaa.Language` struct.

  ## Options

    - `:min_length` - If the text is shorter than `:min_length` it will return `:error`. Default: `10`.
    - `:max_length` - Maximum length to analyze. Default: `2048`.
    - `:only` - Use only this ISO-639-3 language codes for recognition. Default: `[]`.
    - `:ignore` - Skip ISO-639-3 language codes from recognition. Default: `[]`.

  ## Examples

  Detect a string:

      iex> Paasaa.detect("Detect this!")
      {:ok, %Paasaa.Language{
        iso6393: "eng",
        name: "English",
        iso6391: "en",
        iso6392B: "eng",
        iso6392T: "eng",
        scope: "individual",
        type: "living"
      }}

  With the `:ignore` option:

      iex> Paasaa.detect("Detect this!", ignore: ["eng"])
      {:ok, %Paasaa.Language{
        iso6391: nil,
        iso6393: "sco",
        name: "Scots",
        iso6392B: "sco",
        iso6392T: "sco",
        scope: "individual",
        type: "living"
      }}

  With the `:min_length` option:

      iex> Paasaa.detect("Привет", min_length: 6)
      {:ok, %Paasaa.Language{
        iso6393: "rus",
        name: "Russian",
        iso6391: "ru",
        iso6392B: "rus",
        iso6392T: "rus",
        scope: "individual",
        type: "living"
      }}

  It returns `:error` for undetermined language:

      iex> Paasaa.detect("1234567890")
      :error
  """
  @spec detect(string :: String.t(), options :: options()) :: {:ok, Paasaa.Language.t()} | :error
  def detect(string, options \\ @default_options) do
    case list_language_probabilities(string, options) do
      [{iso6393, _weight} | _] ->
        {:ok, Map.fetch!(@languages, iso6393)}

      [] ->
        :error
    end
  end

  @doc """
  Detects a language. Returns a list of ISO-639-3 language codes and probability for each language.
  Returns empty list if language can not be detected.

  For list of available options see `detect/2` for details.

  ## Examples

  Detect language and limit results to 5:

      iex> Paasaa.list_language_probabilities("Detect this!") |> Enum.take(5)
      [
        {"eng", 1.0},
        {"sco", 0.8668304668304668},
        {"nob", 0.6054054054054054},
        {"swe", 0.5921375921375922},
        {"nno", 0.5518427518427518}
      ]

      iex> Paasaa.list_language_probabilities(nil)
      []

      iex> Paasaa.list_language_probabilities("")
      []
  """

  @spec list_language_probabilities(string :: String.t(), options()) :: [
          {language_iso6393_code :: String.t(), weight :: number()}
        ]
  def list_language_probabilities(string, options \\ @default_options)

  def list_language_probabilities("", _), do: []

  def list_language_probabilities(nil, _), do: []

  def list_language_probabilities(string, options) do
    options = Keyword.merge(@default_options, options)

    if String.length(string) < options[:min_length] do
      []
    else
      string = String.slice(string, 0, options[:max_length])
      language_probabilities(string, options)
    end
  end

  @spec language_probabilities(string :: String.t(), options()) :: [
          {language_iso6393_code :: String.t(), weight :: number()}
        ]
  defp language_probabilities(string, options) do
    {script, weight} = get_most_probable_script(string)

    cond do
      weight == 0 ->
        []

      trigrams = Map.get(@trigrams, script) ->
        string
        |> get_clean_trigrams()
        |> get_distances(trigrams, options)
        |> normalize(string)

      true ->
        [{script, 1}]
    end
  end

  @spec get_most_probable_script(string :: String.t()) ::
          {script_or_language_iso6393_code :: String.t(), number()}
  defp get_most_probable_script(string) do
    string_length = String.length(string)

    @script_expressions
    |> Enum.map(fn {name, regexp} -> {name, get_occurrence(string, regexp, string_length)} end)
    |> Enum.max_by(fn {_name, weight} -> weight end)
  end

  @spec get_occurrence(
          string :: String.t(),
          regexp :: Regex.t(),
          string_length :: non_neg_integer()
        ) ::
          float()
  defp get_occurrence(string, regexp, string_length) do
    Enum.count(Regex.scan(regexp, string)) / string_length
  end

  @spec get_distances([String.t()], Enumerable.t(), options()) :: [
          {language_iso6393_code :: String.t(), weight :: number()}
        ]
  defp get_distances(trigrams, languages, options) do
    languages
    |> filter_languages(options)
    |> Enum.map(fn {language, model} -> {language, get_distance(trigrams, model)} end)
    |> Enum.sort(&(elem(&1, 1) < elem(&2, 1)))
  end

  @spec get_distance([String.t()], Enumerable.t()) :: number
  defp get_distance(trigrams, model) do
    Enum.reduce(trigrams, 0, fn {name, val}, distance ->
      distance +
        if Map.has_key?(model, name) do
          abs(val - model[name] - 1)
        else
          @max_difference
        end
    end)
  end

  @spec filter_languages([String.t()], Enumerable.t()) :: Enumerable.t()
  defp filter_languages(languages, options) do
    allow = options[:only]
    ignore = options[:ignore]

    if allow == [] and ignore == [] do
      languages
    else
      Enum.filter(languages, fn {language, _weight} ->
        language_allowed?(language, allow, ignore)
      end)
    end
  end

  defp language_allowed?(_language_or_script, [], []) do
    true
  end

  defp language_allowed?(language_or_script, [], ignore) do
    language_or_script not in ignore
  end

  defp language_allowed?(language_or_script, only, ignore) do
    onlyed? = language_or_script in only
    ignored? = language_or_script in ignore
    onlyed? and not ignored?
  end

  @spec normalize([{script_or_language_iso6393_code :: String.t(), number()}], String.t()) :: [
          {script_or_language_iso6393_code :: String.t(), number()}
        ]
  defp normalize([], _str), do: []

  defp normalize(distances, string) do
    min = distances |> List.first() |> elem(1)
    max = String.length(string) * @max_difference - min

    Enum.map(distances, fn {lang, dist} ->
      dist =
        if max == 0 do
          0
        else
          1 - (dist - min) / max
        end

      {lang, dist}
    end)
  end

  @spec get_clean_trigrams(String.t()) :: [
          {script_or_language_iso6393_code :: String.t(), number()}
        ]
  defp get_clean_trigrams(string) do
    string
    |> clean()
    |> pad()
    |> n_grams()
    |> Enum.reduce(%{}, fn trigram, acc ->
      weight = (acc[trigram] && acc[trigram] + 1) || 1
      Map.put(acc, trigram, weight)
    end)
    |> Map.to_list()
  end

  @spec clean(string :: String.t()) :: String.t()
  defp clean(string) do
    string
    |> String.replace(~r/[\x{0021}-\x{0040}]+/u, " ", global: true)
    |> String.replace(~r/\s+/u, " ", global: true)
    |> String.trim()
    |> String.downcase()
  end

  defp pad(string), do: " #{string} "

  @spec n_grams(string :: String.t(), n :: number) :: [String.t()]
  defp n_grams(string, n \\ 3) do
    string
    |> String.graphemes()
    |> Enum.chunk_every(n, 1, :discard)
    |> Enum.map(&Enum.join/1)
  end
end
