defmodule Mix.Tasks.Paasaa.PrepareLanguages do
  use Mix.Task
  # mix paasaa.prepare_languages

  @shortdoc "Parse and prepare erlang term file"

  def run(file) do
    generate_scripts
    generate_languages
  end

  def generate_scripts do
    scripts = "./priv/scripts.json"
    |> File.read!
    |> JSX.decode!
    |> Enum.map(fn {name, expr} -> {name, Regex.compile!(expr, "u")} end)
    File.write("./priv/scripts.binary", :erlang.term_to_binary(scripts))
  end

  def generate_languages do
    languages = "./priv/languages.json"
    |> File.read!
    |> JSX.decode!
    |> Enum.map(fn {script, langs} ->
        langs = Enum.map(langs, fn {lang, trigrams} ->
          trigrams = trigrams
          |> String.split("|")
          |> Enum.with_index
          |> Enum.into(%{})

          {lang, trigrams}
        end)

        {script, langs}
      end)
    |> Enum.into(%{})

    File.write("./priv/languages.binary", :erlang.term_to_binary(languages))
  end
end
