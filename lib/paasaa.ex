defmodule Paasaa do
  @moduledoc """
  Provides language detection functions

  ## Examples

      iex> Paasaa.detect "Detect this!"
      "eng"

  """

  @scripts "./priv/scripts.binary"
    |> File.read!
    |> :erlang.binary_to_term

  @languages "./priv/languages.binary"
    |> File.read!
    |> :erlang.binary_to_term

  @max_difference 300

  @type result :: [{language :: String.t, score :: number}]

  @type options :: [
    min_length: integer,
    max_length: integer,
    whitelist: [String.t],
    blacklist: [String.t]
  ]

  @default_options [
    min_length: 10,
    max_length: 2048,
    whitelist: [],
    blacklist: [],
  ]

  @doc """
  Detects a language. Returns a string with ISO6393 language code (e.g. "eng").

  ## Parameters

    - `str` - a text string
    - `options` - a keyword list with options:
      - `:min_length` - If the text is shorter than `:min_length` it will return `und`. Default: `10`.
      - `:max_length` - Maximum length to analyze. Default: `2048`.
      - `:whitelist` - Allow languages. Default: `[]`.
      - `:blacklist` - Disallow languages. Default: `[]`.

  ## Examples

  Detect a string:

      iex> Paasaa.detect "Detect this!"
      "eng"

  With the `:blacklist` option:

      iex> Paasaa.detect "Detect this!", blacklist: ["eng"]
      "sco"

  With the `:min_length` option:

      iex> Paasaa.detect "Привет", min_length: 6
      "rus"

  It returns `und` for undetermined language:
      iex> Paasaa.detect "1234567890"
      "und"
  """


  @spec detect(str :: String.t, options) :: language :: String.t
  def detect(str, options \\ @default_options) do
    str
    |> all(options)
    |> List.first
    |> elem(0)
  end

  @doc """
  Detects a language. Returns a list of languages scored by probability.

  ## Parameters

    - `str` - a text string
    - `options` - a keyword list with options, see `detect/2` for details.

  ## Examples

  Detect language and limit results to 5:

      iex> Paasaa.all("Detect this!") |> Enum.take(5)
      [
        {"eng", 1.0},
        {"sco", 0.8668304668304668},
        {"nob", 0.6054054054054054},
        {"swe", 0.5921375921375922},
        {"nno", 0.5518427518427518}
      ]
  """


  @spec all(str :: String.t, options) :: result
  def all(str, options \\ @default_options)
  def all("", _), do: und
  def all(nil, _), do: und
  def all(str, options) do
    options = Keyword.merge @default_options, options

    if String.length(str) < options[:min_length] do
      und
    else
      process(str, options)
    end
  end

  @spec process(str :: String.t, options) :: result
  defp process(str, options) do
    str = String.slice str, 0, options[:max_length]

    {script, count} = detect_script str

    cond do
      count == 0 -> und
      Map.has_key?(@languages, script) ->
        str
        |> get_clean_trigrams
        |> get_distances(@languages[script], options)
        |> normalize(str)

      true -> [{script, 1}]
    end
  end

  defp und, do: [{"und", 1}]

  @spec detect_script(str :: String.t) :: {String.t, number}
  defp detect_script(str) do
    len = String.length(str)

    @scripts
    |> Enum.map(fn {name, re} -> {name, get_occurrence(str, re, len)} end)
    |> Enum.max_by(fn {_, count} -> count end)
  end

  @spec get_occurrence(str :: String.t, re :: Regex.t, str_len :: non_neg_integer) :: float
  defp get_occurrence(str, re, str_len) do
    Enum.count(Regex.scan(re, str)) / str_len
  end

  @spec get_distances([String.t], Enumerable.t, options) :: result
  defp get_distances(trigrams, languages, options) do
    languages
    |> filter_languages(options)
    |> Enum.map(fn {lang, model} -> {lang, get_distance(trigrams, model)} end)
    |> Enum.sort(&(elem(&1, 1) < elem(&2, 1)))
  end

  @spec get_distance([String.t], Enumerable.t) :: number
  defp get_distance(trigrams, model) do
    Enum.reduce trigrams, 0, fn {name, val}, distance ->
      distance + if Map.has_key?(model, name) do
        abs val - model[name] - 1
      else
        @max_difference
      end
    end
  end

  @spec filter_languages([String.t], Enumerable.t) :: Enumerable.t
  defp filter_languages(languages, options) do
    white = options[:whitelist]
    black = options[:blacklist]

    if Enum.empty?(white) && Enum.empty?(black) do
      languages
    else
      Enum.filter languages, fn {lang, _} ->
        (Enum.empty?(white) || Enum.member?(white, lang)) && !Enum.member?(black, lang)
      end
    end
  end

  @spec normalize(result, String.t) :: result
  defp normalize([], _str), do: und
  defp normalize(distances, str) do
    min = distances |> List.first |> elem(1)
    max = String.length(str) * @max_difference - min

    Enum.map distances, fn({lang, dist}) ->
      dist = if max == 0 do 0 else 1 - ((dist - min) / max) end

      {lang, dist}
    end
  end

  # trigram stuff

  @spec get_clean_trigrams(String.t) :: result
  defp get_clean_trigrams(str) do
    str
    |> clean
    |> pad
    |> n_grams
    |> Enum.reduce(%{}, fn(trigram, acc) ->
        count = acc[trigram] && acc[trigram] + 1 || 1
        Map.put(acc, trigram, count)
      end)
    |> Map.to_list
  end

  @spec clean(str :: String.t) :: String.t
  defp clean(str) do
    expression_symbols = ~r/[\x{0021}-\x{0040}]+/u

    str
    |> String.replace(expression_symbols, " ")
    |> String.replace(~r/\s+/, " ")
    |> String.trim
    |> String.downcase
  end

  defp pad(str), do: " #{str} "

  @spec n_grams(str :: String.t, n :: number) :: [String.t]
  defp n_grams(str, n \\ 3) do
    str
    |> String.graphemes
    |> Enum.chunk(n, 1)
    |> Enum.map(&Enum.join/1)
  end
end
