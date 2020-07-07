####### Languages ########

languages_url = "https://raw.githubusercontent.com/wooorm/franc/main/packages/franc/data.json"

{:ok, %{status: 200, body: body}} = Tesla.get(languages_url)

languages =
  body
  |> Jason.decode!()
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
  Regex.replace(~r/(?s-i).*{/, body, "{")
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
