defmodule Paasaa.Scripts do
  @moduledoc false

  @data %{
    "Arabic" =>
      "[؀-؄؆-؋؍-ؚ؜؞ؠ-ؿف-يٖ-ٯٱ-ۜ۞-ۿݐ-ݿࢠ-ࢴࢶ-ࢽ࣓-ࣣ࣡-ࣿﭐ-﯁ﯓ-ﴽﵐ-ﶏﶒ-ﷇﷰ-﷽ﹰ-ﹴﹶ-ﻼ]|�[�-�]|�[�-��-������-��-��������-�������������-��-��-��-���-��-��-��-��-���]",
    "Cyrillic" => "[Ѐ-҄҇-ԯᲀ-ᲈᴫᵸⷠ-ⷿꙀ-ꚟ︮︯]",
    "Devanagari" => "[ऀ-ॐॕ-ॣ०-ॿ꣠-ꣿ]",
    "Ethiopic" =>
      "[ሀ-ቈቊ-ቍቐ-ቖቘቚ-ቝበ-ኈኊ-ኍነ-ኰኲ-ኵኸ-ኾዀዂ-ዅወ-ዖዘ-ጐጒ-ጕጘ-ፚ፝-፼ᎀ-᎙ⶀ-ⶖⶠ-ⶦⶨ-ⶮⶰ-ⶶⶸ-ⶾⷀ-ⷆⷈ-ⷎⷐ-ⷖⷘ-ⷞꬁ-ꬆꬉ-ꬎꬑ-ꬖꬠ-ꬦꬨ-ꬮ]",
    "Hebrew" => "[֑-ׇא-תׯ-״יִ-זּטּ-לּמּנּסּףּפּצּ-ﭏ]",
    "Latin" =>
      "[A-Za-z\\xAA\\xBA\\xC0-\\xD6\\xD8-\\xF6\\xF8-ʸˠ-ˤᴀ-ᴥᴬ-ᵜᵢ-ᵥᵫ-ᵷᵹ-ᶾḀ-ỿⁱⁿₐ-ₜKÅℲⅎⅠ-ↈⱠ-ⱿꜢ-ꞇꞋ-ꞿꟂ-Ᶎꟷ-ꟿꬰ-ꭚꭜ-ꭤꭦꭧﬀ-ﬆＡ-Ｚａ-ｚ]",
    "Myanmar" => "[က-႟ꧠ-ꧾꩠ-ꩿ]",
    "aii" => "[܀-܍܏-݊ݍ-ݏࡠ-ࡪ]",
    "ben" => "[ঀ-ঃঅ-ঌএঐও-নপ-রলশ-হ়-ৄেৈো-ৎৗড়ঢ়য়-ৣ০-৾]",
    "bod" => "[ༀ-ཇཉ-ཬཱ-ྗྙ-ྼ྾-࿌࿎-࿔࿙࿚]",
    "cmn" =>
      "[⺀-⺙⺛-⻳⼀-⿕々〇〡-〩〸-〻㐀-䶵一-鿯豈-舘並-龎]|[�-��-��-��-�][�-�]|�[�-��-�]|�[�-��-�]|�[�-��-�]|�[�-��-�]|�[�-�]|�[�-�]",
    "ell" =>
      "[Ͱ-ͳ͵-ͷͺ-ͽͿ΄ΆΈ-ΊΌΎ-ΡΣ-ϡϰ-Ͽᴦ-ᴪᵝ-ᵡᵦ-ᵪᶿἀ-ἕἘ-Ἕἠ-ὅὈ-Ὅὐ-ὗὙὛὝὟ-ώᾀ-ᾴᾶ-ῄῆ-ΐῖ-Ί῝-`ῲ-ῴῶ-῾Ωꭥ]|�[�-��]|�[�-�]",
    "guj" => "[ઁ-ઃઅ-ઍએ-ઑઓ-નપ-રલળવ-હ઼-ૅે-ૉો-્ૐૠ-ૣ૦-૱ૹ-૿]",
    "hye" => "[Ա-Ֆՙ-ֈ֊֍-֏ﬓ-ﬗ]",
    "iii" => "[ꀀ-ꒌ꒐-꓆]",
    "jpn" => "[ぁ-ゖゝ-ゟ]|�[�-��-�]|🈀|[ァ-ヺヽ-ヿㇰ-ㇿ㋐-㋾㌀-㍗ｦ-ｯｱ-ﾝ]|�[��-�]|[㐀-䶵一-龯]",
    "kan" => "[ಀ-ಌಎ-ಐಒ-ನಪ-ಳವ-ಹ಼-ೄೆ-ೈೊ-್ೕೖೞೠ-ೣ೦-೯ೱೲ]",
    "kat" => "[Ⴀ-ჅჇჍა-ჺჼ-ჿᲐ-ᲺᲽ-Ჿⴀ-ⴥⴧⴭ]",
    "khm" => "[ក-៝០-៩៰-៹᧠-᧿]",
    "kor" => "[ᄀ-ᇿ〮〯ㄱ-ㆎ㈀-㈞㉠-㉾ꥠ-ꥼ가-힣ힰ-ퟆퟋ-ퟻﾠ-ﾾￂ-ￇￊ-ￏￒ-ￗￚ-ￜ]",
    "lao" => "[ກຂຄຆ-ຊຌ-ຣລວ-ຽເ-ໄໆ່-ໍ໐-໙ໜ-ໟ]",
    "mal" => "[ഀ-ഃഅ-ഌഎ-ഐഒ-ൄെ-ൈൊ-൏ൔ-ൣ൦-ൿ]",
    "ori" => "[ଁ-ଃଅ-ଌଏଐଓ-ନପ-ରଲଳଵ-ହ଼-ୄେୈୋ-୍ୖୗଡ଼ଢ଼ୟ-ୣ୦-୷]",
    "pan" => "[ਁ-ਃਅ-ਊਏਐਓ-ਨਪ-ਰਲਲ਼ਵਸ਼ਸਹ਼ਾ-ੂੇੈੋ-੍ੑਖ਼-ੜਫ਼੦-੶]",
    "sat" => "[᱐-᱿]",
    "sin" => "[ංඃඅ-ඖක-නඳ-රලව-ෆ්ා-ුූෘ-ෟ෦-෯ෲ-෴]|�[�-�]",
    "tam" => "[ஂஃஅ-ஊஎ-ஐஒ-கஙசஜஞடணதந-பம-ஹா-ூெ-ைொ-்ௐௗ௦-௺]|�[�-��]",
    "tel" => "[ఀ-ఌఎ-ఐఒ-నప-హఽ-ౄె-ైొ-్ౕౖౘ-ౚౠ-ౣ౦-౯౷-౿]",
    "tha" => "[ก-ฺเ-๛]",
    "zgh" => "[ⴰ-ⵧⵯ⵰⵿]"
  }

  def get, do: @data
end
