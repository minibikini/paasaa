defmodule Paasaa.DataTest do
  use ExUnit.Case, async: true

  test "scripts/0" do
    assert [{"Arabic", _} | _] = Paasaa.Data.scripts()
  end

  test "languages/0" do
    languages = Paasaa.Data.languages()
    assert is_map(languages)

    latin = languages["Latin"]

    assert is_list(latin)
    assert [{lang, %{}} | _] = latin
    assert is_binary(lang)
    assert String.length(lang) == 3
  end
end
