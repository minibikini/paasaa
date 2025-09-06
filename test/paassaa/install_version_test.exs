defmodule Paasaa.InstallVersionTest do
  use ExUnit.Case, async: true

  test "install version check" do
    assert_version("README.md")
  end

  defp assert_version(filename) do
    app = Keyword.get(Mix.Project.config(), :app)
    app_version = app |> Application.spec(:vsn) |> to_string()

    file = File.read!(filename)
    [_, file_versions] = Regex.run(~r/{:#{app}, "(.+)"}/, file)

    assert Version.match?(
             app_version,
             file_versions
           ),
           """
           Install version constraint in `#{filename}` does not match to current app version.
           Current App Version: #{app_version}
           `#{filename}` Install Versions: #{file_versions}
           """
  end
end
