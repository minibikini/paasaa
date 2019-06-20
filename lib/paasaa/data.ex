defmodule Paasaa.Data do
  @moduledoc false

  def scripts do
    Paasaa.Scripts.get()
    |> Enum.map(fn {name, expr} -> {name, Regex.compile!(expr, "u")} end)
  end

  def languages do
    Paasaa.Languages.get()
    |> Enum.map(&parse_trigrams/1)
    |> Enum.into(%{})
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
end
