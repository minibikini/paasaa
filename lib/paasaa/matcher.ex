defmodule Paasaa.Matcher do
  @moduledoc false

  @data Paasaa.Languages.get()

  # Generate match/2 clauses for every language and trigram during compile time
  for {_script, languages} <- @data,
      {lang, trigrams_str} <- languages do
    trigrams =
      trigrams_str
      |> String.split("|")
      |> Enum.with_index()

    for {trigram, index} <- trigrams do
      def match(unquote(lang), unquote(trigram)), do: unquote(index)
    end
  end

  # Fallback for unknown languages or missing trigrams
  def match(_, _), do: nil
end
