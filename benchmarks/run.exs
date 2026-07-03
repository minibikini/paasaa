# benchmarks/run.exs
# Usage: mix run benchmarks/run.exs [output_name]
# Example: mix run benchmarks/run.exs current_approach

Mix.start()
Application.ensure_all_started(:paasaa)

# Load test fixtures
Code.require_file("test/support/fixtures.ex")

# Select representative fixtures to keep benchmark execution fast and stable
selected_keys = ["eng", "rus", "spa", "deu_1996", "cmn_hans", "arb", "hin", "jpn", "fra", "por_BR"]

fixtures = 
  Paasaa.Support.Fixtures.fixtures()
  |> Enum.filter(fn {name, _} -> name in selected_keys end)
  |> Enum.map(fn {name, data} -> {name, data["fixture"]} end)
  |> Map.new()

# Resolve report path
output_name = System.argv() |> List.first() || "current_approach"
output_path = "benchmarks/#{output_name}.md"

IO.puts("Running Benchee benchmark for: #{output_name}...")

Benchee.run(
  %{
    "detect" => fn text -> Paasaa.detect(text) end
  },
  inputs: fixtures,
  time: 3,
  warmup: 1,
  memory_time: 1,
  print: [
    benchmarking: true,
    configuration: false,
    fast_warning: false
  ],
  formatters: [
    Benchee.Formatters.Console,
    {Benchee.Formatters.Markdown, file: output_path}
  ]
)

IO.puts("\n[OK] Benchmark report saved to: #{output_path}")
