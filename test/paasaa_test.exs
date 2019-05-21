defmodule PaasaaTest do
  use ExUnit.Case, async: true
  import Paasaa
  alias Paasaa.Language

  doctest Paasaa

  # Fixtures can be updated from https://github.com/wooorm/franc/blob/master/test/fixtures.json
  @fixtures "./test/fixtures/samples.json" |> File.read!() |> Jason.decode!()

  describe "detect/2" do
    test "works on unique-scripts with many latin characters" do
      fixture = "한국어 문서가 전 세계 웹에서 차지하는 비중은 2004년에 4.1%로,
      이는 영어(35.8%), 중국어(14.1%), 일본어(9.6%), 스페인어(9%), 독일어(7%)에
      이어 전 세계 6위이다. 한글 문서와 한국어 문서를 같은것으로 볼 때, 웹상에서의
      한국어 사용 인구는 전 세계 69억여 명의 인구 중 약 1%에 해당한다."

      assert detect(fixture) ==
               {:ok,
                %Language{
                  iso6391: "ko",
                  iso6392B: "kor",
                  iso6392T: "kor",
                  iso6393: "kor",
                  name: "Korean",
                  scope: "individual",
                  type: "living"
                }}

      fixture = ~s(現行の学校文法では、英語にあるような「目的語」「補語」
      などの成分はないとする。英語文法では "I read a book." の "a book"
      はSVO文型の一部をなす目的語であり、また、"I go to the library." の
      "the library" は前置詞とともに付け加えられた修飾語と考えられる。)

      assert detect(fixture) ==
               {:ok,
                %Language{
                  iso6391: "ja",
                  iso6392B: "jpn",
                  iso6392T: "jpn",
                  iso6393: "jpn",
                  name: "Japanese",
                  scope: "individual",
                  type: "living"
                }}
    end

    test "works on weird values" do
      assert detect("the the the the the ") ==
               {:ok,
                %Language{
                  iso6391: nil,
                  iso6392B: "sco",
                  iso6392T: "sco",
                  iso6393: "sco",
                  name: "Scots",
                  scope: "individual",
                  type: "living"
                }}
    end

    test "returns `:error` on an undetermined value" do
      assert detect("XYZ") == :error
    end

    test "returns `:error` on a nil value" do
      assert detect(nil) == :error
    end

    test "returns `:error` for generic characters" do
      assert detect("987 654 321") == :error
    end

    test "accepts `ignore`" do
      assert {:ok, %Language{iso6393: iso6393}} = detect("Detect this", ignore: ["eng"])
      assert iso6393 != "eng"
    end

    test "accepts `only`" do
      assert detect("Detect this", only: ["eng"]) ==
               {:ok,
                %Language{
                  iso6391: "en",
                  iso6392B: "eng",
                  iso6392T: "eng",
                  iso6393: "eng",
                  name: "English",
                  scope: "individual",
                  type: "living"
                }}
    end

    test "accepts `only` for different scripts" do
      assert detect("הפיתוח הראשוני בשנות ה־80 התמקד בגנו ובמערכת הגרפית", only: ["eng"]) ==
               :error
    end

    test "accepts `:min_length`" do
      assert detect("the", min_length: 3) ==
               {:ok,
                %Language{
                  iso6391: nil,
                  iso6392B: "sco",
                  iso6392T: "sco",
                  iso6393: "sco",
                  name: "Scots",
                  scope: "individual",
                  type: "living"
                }}

      assert detect("the", min_length: 4) == :error

      assert detect("Привет", min_length: 6) ==
               {:ok,
                %Paasaa.Language{
                  iso6391: "ru",
                  iso6392B: "rus",
                  iso6392T: "rus",
                  iso6393: "rus",
                  name: "Russian",
                  scope: "individual",
                  type: "living"
                }}
    end

    for {variant, %{"iso6393" => iso6393, "fixture" => fixture}} <- @fixtures do
      test "detects #{iso6393} (#{variant}) language" do
        assert {:ok, %Language{iso6393: unquote(iso6393)}} = detect(unquote(fixture))
      end
    end
  end

  describe "list_language_probabilities/2" do
    test "returns a list containing language-probability tuples" do
      assert [{"eng", weight} | _] = list_language_probabilities("Detect this")
      assert is_number(weight)
    end

    test ~s(returns empty list for generic characters) do
      assert list_language_probabilities("987 654 321") == []
    end

    test "works on weird values" do
      assert [{"sco", _}, {"eng", _}] =
               list_language_probabilities("the the the the the ") |> Enum.take(2)
    end

    for {variant, %{"iso6393" => iso6393, "fixture" => fixture}} <- @fixtures do
      test "detects #{iso6393} (#{variant}) language" do
        language_probabilities = list_language_probabilities(unquote(fixture))

        assert [{unquote(iso6393), _weight} | _] = language_probabilities

        assert Enum.all?(language_probabilities, fn {language, _weight} ->
                 is_binary(language)
               end)

        assert Enum.all?(language_probabilities, fn {_language, weight} ->
                 is_number(weight) and 0 <= weight and weight <= 1
               end)
      end
    end
  end
end
