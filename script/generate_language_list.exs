defmodule LanguageListGenerator do
  def generate do
    # Get and sort language codes
    language_codes =
      Paasaa.Languages.get()
      |> Enum.flat_map(fn {_script_name, languages_map} ->
        Map.keys(languages_map)
      end)
      |> Enum.sort()

    # Count total languages
    total_languages = Enum.count(language_codes)

    # Generate table header
    header = "| ISO Code | Language Name |\n|----------|---------------|"

    # Generate language data rows
    languages_data =
      language_codes
      |> Enum.map(fn code ->
        case IsoLang.get(code) do
          {:ok, %{name: name}} ->
            "| #{code} | #{name} |"
          _ ->
            "| #{code} | Unknown Language |"
        end
      end)
      |> Enum.join("\n")

    "Total Languages: #{total_languages}\n\n#{header}\n#{languages_data}"
  end
end

File.write!("LANGUAGES.md", "# Supported Languages\n\n" <> LanguageListGenerator.generate())
