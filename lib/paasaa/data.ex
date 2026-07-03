defmodule Paasaa.Data do
  @moduledoc false

  def scripts do
    Paasaa.Scripts.get()
    |> Enum.map(fn {name, expr} -> {name, Regex.compile!(expr, "u")} end)
  end

  def languages do
    Paasaa.Languages.get()
    |> Map.new(fn {script, langs} -> {script, Map.keys(langs)} end)
  end
end
