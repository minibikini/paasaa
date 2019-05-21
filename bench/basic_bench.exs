defmodule BasicBench do
  use Benchfella

  @fixtures "./test/fixtures/samples.json" |> File.read!() |> Jason.decode!()

  @english_short @fixtures |> Map.fetch!("eng") |> Map.fetch!("fixture")
  @english_long File.read!("./bench/fixtures/english.txt")

  fixtures_to_bench = @fixtures |> Enum.take(10) |> Enum.into(%{})

  for {variant, %{"iso6393" => iso6393, "fixture" => fixture}} <- fixtures_to_bench do
    @fixture fixture

    bench "detect/2: #{iso6393} (#{variant})" do
      Paasaa.detect(@fixture)
    end

    bench "list_language_probabilities/2: #{iso6393} (#{variant})" do
      Paasaa.list_language_probabilities(@fixture)
    end
  end

  bench "English (Short Text)" do
    Paasaa.detect(@english_short)
  end

  bench "English (Long Text)" do
    Paasaa.detect(@english_long)
  end
end
