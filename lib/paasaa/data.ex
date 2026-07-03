defmodule Paasaa.Data do
  @moduledoc false

  @scripts Paasaa.Scripts.get()
           |> Enum.map(fn {name, expr} -> {name, Regex.compile!(expr, "u")} end)

  @languages Paasaa.Languages.get()
             |> Map.new(fn {script, langs} ->
               {script,
                Enum.map(langs, fn {lang, trigrams_str} ->
                  trigrams =
                    trigrams_str
                    |> String.split("|")
                    |> Enum.with_index()
                    |> Map.new()

                  {lang, trigrams}
                end)}
             end)

  def scripts, do: @scripts

  def languages, do: @languages
end
