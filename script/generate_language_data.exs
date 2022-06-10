################################################################################
# This script is used to port over files and data from the
# https://github.com/wooorm/franc/ project
################################################################################

####### Languages ########

languages_url = "https://raw.githubusercontent.com/wooorm/franc/main/packages/franc/data.js"

{:ok, %{status: 200, body: body}} = Tesla.get(languages_url)

# "/** @type {Record<string, Record<string, string>>} */\nexport const data = " <> raw = body

# languages = raw
languages = Regex.replace(~r/^.*=\s?/sU, body, "")
|> String.replace(~r/\s*(\w+):/, "\n  \"\\1\":")
|> String.replace(~r/'/, "\"")
|> :jsx.decode()
|> inspect(limit: :infinity)

languages_ex =
  """
  defmodule Paasaa.Languages do
    @moduledoc false

    @data #{languages}

    def get, do: @data
  end

  """
  |> Code.format_string!()

File.write!("./lib/paasaa/languages.ex", languages_ex ++ "\n")

######## Scripts ########

scripts_url = "https://raw.githubusercontent.com/wooorm/franc/main/packages/franc/expressions.js"

{:ok, %{status: 200, body: body}} = Tesla.get(scripts_url)

scripts =
  Regex.replace(~r/^.*=\s?/sU, body, "")
  |> String.replace(~r/\s*(\w+):/, "\n  \"\\1\":")
  |> String.replace("/[", "\"[")
  |> String.replace("]/g", "]\"")
  |> :jsx.decode()
  |> Enum.into(%{})
  |> inspect(limit: :infinity)

scripts_ex =
  """
  defmodule Paasaa.Scripts do
    @moduledoc false

    @data #{scripts}

    def get, do: @data
  end
  """
  |> Code.format_string!()

File.write!("./lib/paasaa/scripts.ex", scripts_ex ++ "\n")
