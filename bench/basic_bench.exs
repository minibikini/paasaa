defmodule BasicBench do
  use Benchfella

  @fixtures Paasaa.Support.Fixtures.fixtures()

  @support Paasaa.Support.Fixtures.support()
           |> Enum.take(10)
           |> Enum.with_index()

  Enum.each(@support, fn {language, index} ->
    @index index
    @input Enum.at(@fixtures, @index)

    bench "[#{index}] #{language["name"]} (#{language["udhr"]})" do
      Paasaa.detect(@input)
    end
  end)

  @english_short Enum.at(@fixtures, 2)

  @english_long File.read!("./bench/english.txt")

  bench "English (Short Text)" do
    Paasaa.detect(@english_short)
  end

  bench "English (Long Text)" do
    Paasaa.detect(@english_long)
  end

  bench "detect_script English (Short Text)" do
    Paasaa.detect_script(@english_short)
  end

  @english_max String.slice(@english_long, 0, 2048)

  bench "detect_script English (Long Text)" do
    Paasaa.detect_script(@english_max)
  end
end
