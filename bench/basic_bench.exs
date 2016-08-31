defmodule BasicBench do
  use Benchfella

  # @list Enum.to_list(1..1000)
  @fixtures "./test/fixtures.json"
    |> File.read!
    |> JSX.decode!

  @support "./priv/support.json"
    |> File.read!
    |> JSX.decode!
    |> Enum.take(10)
    |> Enum.with_index()

  Enum.each @support, fn({language, index}) ->
    @language language
    @index index
    @input Enum.at(@fixtures, @index)

    bench "[#{index}] #{language["name"]} (#{language["udhr"]})" do
      Paasaa.detect(@input)
    end
  end

  @english_short Enum.at(@fixtures, 2)

  @english_long File.read! "./bench/english.txt"

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
