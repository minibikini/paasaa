defmodule PaasaaTest do
  use ExUnit.Case, async: true

  import Paasaa.Support.Fixtures

  doctest Paasaa

  @some_hebrew "הפיתוח הראשוני בשנות ה־80 התמקד בגנו ובמערכת הגרפית"

  describe "Paasaa.detect" do
    test "should work on unique-scripts with many latin characters" do
      fixture = "한국어 문서가 전 세계 웹에서 차지하는 비중은 2004년에 4.1%로,
      이는 영어(35.8%), 중국어(14.1%), 일본어(9.6%), 스페인어(9%), 독일어(7%)에
      이어 전 세계 6위이다. 한글 문서와 한국어 문서를 같은것으로 볼 때, 웹상에서의
      한국어 사용 인구는 전 세계 69억여 명의 인구 중 약 1%에 해당한다."

      assert Paasaa.detect(fixture) == "kor"

      fixture = ~s(現行の学校文法では、英語にあるような「目的語」「補語」
      などの成分はないとする。英語文法では "I read a book." の "a book"
      はSVO文型の一部をなす目的語であり、また、"I go to the library." の
      "the library" は前置詞とともに付け加えられた修飾語と考えられる。)

      assert Paasaa.detect(fixture) == "jpn"
    end

    test "should work on weird values" do
      assert Paasaa.detect("the the the the the ") == "sco"
    end

    test "should return `und` on an undetermined value" do
      assert Paasaa.detect("XYZ") == "und"
    end

    test "should return `und` on a nil value" do
      assert Paasaa.detect(nil) == "und"
    end

    test "should return `und` for generic characters" do
      assert Paasaa.detect("987 654 321") == "und"
    end

    test "should accept `blacklist`" do
      str = fixtures() |> get_in(["eng", "fixture"])

      language = Paasaa.detect(str)

      assert Paasaa.detect(str, blacklist: [language]) != language
    end

    test "should accept `whitelist`" do
      assert "pol" =
               "Pošto je priznavanje urođenog dostojanstva i jednakih i neotuđivih prava svih članova ljudske porodice temelj slobode, pravde i mira u svetu;\npošto je nepoštovanje i preziranje prava čoveka vodilo var"
               |> Paasaa.detect(whitelist: ["pol"])
    end

    test "should accept `whitelist` for different scripts" do
      result = Paasaa.detect(@some_hebrew, whitelist: ["eng"])
      assert result == "und"

      result = Paasaa.detect("熊生活在森林中，不喜歡人。", whitelist: ["eng", "jpn"])
      assert result == "und"
    end

    test "should accept `:min_length`" do
      result = Paasaa.detect("the", min_length: 3)
      assert result == "sco"

      result = Paasaa.detect("the", min_length: 4)
      assert result == "und"

      result = Paasaa.detect("Привет", min_length: 6)
      assert result == "rus"
    end
  end

  describe "Paasaa.all" do
    test "should return a list containing language--probability tuples" do
      result = Paasaa.all("")
      assert result |> is_list

      [first_element | _] = result
      assert first_element |> is_tuple

      {lang, score} = Enum.at(result, 0)

      assert lang |> is_binary
      assert score |> is_number
    end

    test ~s(should return `[{"und", 1}]` for generic characters) do
      assert [{"und", 1}] = Paasaa.all("987 654 321")
    end

    test "should work on weird values" do
      result = Paasaa.all("the the the the the ") |> Enum.take(2)
      assert [{"sco", _}, {"eng", _}] = result
    end
  end

  describe "algorithm" do
    fixtures()
    |> Enum.each(fn {language, %{"iso6393" => iso6393, "fixture" => fixture}} ->
      @iso6393 iso6393
      @fixture fixture
      test "should classify #{language} with > 98% certainty" do
        result = Paasaa.all(@fixture)

        {_, percent} = Enum.find(result, {"no-match", 0}, fn {lang, _pct} -> lang == @iso6393 end)

        assert percent > 0.98

        Enum.each(result, fn {_, score} ->
          assert score <= 1 && score >= 0
        end)
      end
    end)
  end

  test "detect_script/1" do
    text = "ყველა ადამიანი იბადება თავისუფალი და თანასწორი თავისი ღირსებითა და უფლებებით"
    assert {"kat", _} = Paasaa.detect_script(text)
  end
end
