defmodule Paasaa.Data do
  @moduledoc false
  alias Paasaa.Language

  @otp_app :paasaa

  # For update details see priv/expressions.ex
  def fetch_script_expressions! do
    {expressions, _bindings} =
      priv_dir("expressions.ex")
      |> Code.eval_file()

    Enum.map(expressions, fn {key, value} -> {to_string(key), value} end)
  end

  # Trigrams can be updated from https://github.com/wooorm/franc/blob/master/packages/franc/data.json
  def fetch_trigrams! do
    priv_dir("trigrams.json")
    |> File.read!()
    |> Jason.decode!()
    |> Enum.map(&parse_trigrams/1)
    |> Enum.into(%{})
  end

  # This function is used to filter languages which can not be returned by detection algorythm
  # from file downloaded from https://github.com/wooorm/iso-639-3/blob/master/index.json
  def fetch_languages! do
    priv_dir("iso-639-3.json")
    |> File.read!()
    |> Jason.decode!()
    |> Enum.reduce(%{}, fn language, languages ->
      %{
        "name" => name,
        "type" => type,
        "scope" => scope,
        "iso6393" => iso6393,
        "iso6392B" => iso6392B,
        "iso6392T" => iso6392T,
        "iso6391" => iso6391
      } = language

      language = %Language{
        name: name,
        type: type,
        scope: scope,
        iso6393: iso6393,
        iso6392B: iso6392B,
        iso6392T: iso6392T,
        iso6391: iso6391
      }

      Map.put(languages, iso6393, language)
    end)
  end

  def minimize_languages_file! do
    expression_languages_and_scripts = fetch_script_expressions!() |> Enum.map(&elem(&1, 0))
    trigram_languages = fetch_languages!() |> Enum.map(&elem(&1, 0))
    supported_languages = Enum.uniq(expression_languages_and_scripts ++ trigram_languages)

    file_path = priv_dir("iso-639-3.json")

    minimized_content =
      file_path
      |> File.read!()
      |> Jason.decode!()
      |> Enum.filter(fn %{"iso6393" => iso6393} -> iso6393 in supported_languages end)
      |> Jason.encode!()

    File.write!(file_path, minimized_content)
  end

  defp parse_trigrams({script, langs}), do: {script, parse_trigrams(langs)}

  defp parse_trigrams(langs) when is_map(langs) do
    Enum.map(langs, fn {lang, trigrams} ->
      {lang, parse_trigrams(trigrams)}
    end)
  end

  defp parse_trigrams(trigrams_str) when is_binary(trigrams_str) do
    trigrams_str
    |> String.split("|")
    |> Enum.with_index()
    |> Enum.into(%{})
  end

  defp priv_dir(app \\ @otp_app, path) do
    case :code.priv_dir(app) do
      priv_path when is_list(priv_path) or is_binary(priv_path) ->
        Path.join([priv_path] ++ List.wrap(path))

      {:error, :bad_name} ->
        raise ArgumentError, "unknown application: #{inspect(app)}"
    end
  end
end
