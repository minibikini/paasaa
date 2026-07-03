defmodule Paasaa.Data do
  @moduledoc false

  @scripts Paasaa.Scripts.get()
           |> Enum.map(fn {name, expr} -> {name, Regex.compile!(expr, "u")} end)

  @languages Paasaa.Languages.get()
             |> Map.new(fn {script, langs} -> {script, Map.keys(langs)} end)

  def scripts, do: @scripts

  def languages, do: @languages
end
