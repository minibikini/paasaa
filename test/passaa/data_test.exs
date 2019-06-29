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
    assert [{"ace", %{}} | _] = latin
  end
end
