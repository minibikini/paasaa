defmodule Mix.Tasks.Paasaa.PrepareLanguages do
  use Mix.Task
  # mix paasaa.prepare_languages

  @shortdoc "Parse and prepare erlang term file"
  @moduledoc false

  def run(_args) do
    generate_scripts
    generate_languages

    Mix.shell.info "The term files generated successfully!"
    :ok
  end

  def generate_scripts do
    File.write! "./priv/scripts.binary", "./data/scripts.json"
    |> File.read!
    |> JSX.decode!
    |> Enum.map(fn {name, expr} -> {name, Regex.compile!(expr, "u")} end)
    |> :erlang.term_to_binary
  end

  def generate_languages do
    File.write! "./priv/languages.binary", "./data/languages.json"
    |> File.read!
    |> JSX.decode!
    |> Enum.map(&parse_trigrams/1)
    |> Enum.into(%{})
    |> :erlang.term_to_binary
  end

  defp parse_trigrams({script, langs}), do: {script, parse_trigrams langs}

  defp parse_trigrams(langs) when is_map(langs) do
    Enum.map langs, fn {lang, trigrams} ->
      {lang, parse_trigrams trigrams}
    end
  end

  defp parse_trigrams(trigrams_str) when is_binary(trigrams_str) do
    trigrams_str
    |> String.split("|")
    |> Enum.with_index
    |> Enum.into(%{})
  end
end
