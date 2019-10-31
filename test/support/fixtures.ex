defmodule Paasaa.Support.Fixtures do
  @moduledoc false

  @data [
    "鉴于对人类家庭所有成员的固有尊严及其平等的和不移的权利的承认,乃是世界自由、正义与和平的基础,\n鉴于对人权的无视和侮蔑已发展为野蛮暴行,这些暴行玷污了人类的良心,而一个人人享有言论和信仰自由并免予恐惧和匮乏的世界的来临,已被宣布为普通人民的最高愿望,\n鉴于为使人类不致迫不得已铤而走险对暴政和压迫进行反叛,有必要使人权受法治的保护,\n鉴于有必要促进各国间友好关系的发展,\n鉴于各联合国国家的人民已在联",
    "Considerando que la libertad, la justicia y la paz en el mundo tienen por base el reconocimiento de la dignidad intrínseca y de los derechos iguales e inalienables de todos los miembros de la familia ",
    "Whereas recognition of the inherent dignity and of the equal and inalienable rights of all members of the human family is the foundation of freedom, justice and peace in the world,\nWhereas disregard a",
    "Принимая во внимание, что признание достоинства, присущего всем членам человеческой семьи, и равных и неотъемлемых прав их является основой свободы, справедливости и всеобщего мира; и\nпринимая во вним",
    "لمّا كان الاعتراف بالكرامة المتأصلة في جميع أعضاء الأسرة البشرية وبحقوقهم المتساوية الثابتة هو أساس الحرية والعدل والسلام في العالم.\nولما كان تناسي حقوق الإنسان وازدراؤها قد أفضيا إلى أعمال همجية آذت ",
    "যেহেতু মানব পরিবারের সকল সদস্যের সমান ও অবিচ্ছেদ্য অধিকারসমূহ এবং সহজাত মর্যাদার স্বীকৃতি‌ই হচ্ছে বিশ্বে শান্তি, স্বাধীনতা এবং ন্যায়বিচারের ভিত্তি;\nযেহেতু মানব অধিকারের প্রতি অবজ্ঞা এবং ঘৃণার ফলে মান",
    "चूंकि मानव परिवार के सभी सदस्यों के जन्मजात गौरव और समान तथा अविच्छिन्न अधिकार की स्वीकृति ही विश्व-शान्ति, न्याय और स्वतन्त्रता की बुनियाद है,\nचूंकि मानव अधिकारों के प्रति उपेक्षा और घृणा के फलस्वरूप",
    "Considerando que o reconhecimento da dignidade inerente a todos os membros da família humana e dos seus direitos iguais e inalienáveis constitui o fundamento da liberdade, da justiça e da paz no mundo",
    "Menimbang bahwa pengakuan atas martabat alamiah dan hak-hak yang sama dan mutlak dari semua anggota keluarga manusia adalah dasar kemerdekaan, keadilan dan perdamaian di dunia,\nMenimbang bahwa mengaba",
    "人類社会のすべての構成員の固有の尊厳と平等で譲ることのできない権利とを承認することは、世界における自由、正義及び平和の基礎であるので、\n人権の無視及び軽侮が、人類の良心を踏みにじった野蛮行為をもたらし、言論及び信仰の自由が受けられ、恐怖及び欠乏のない世界の到来が、一般の人々の最高の願望として宣言されたので、\n人間が専制と圧迫とに対する最後の手段として反逆に訴えることがないようにするためには、法の支",
    "Considérant que la reconnaissance de la dignité inhérente à tous les membres de la famille humaine et de leurs droits égaux et inaliénables constitue le fondement de la liberté, de la justice et de la",
    "Da die Anerkennung der angeborenen Würde und der gleichen und unveräußerlichen Rechte aller Mitglieder der Gemeinschaft der Menschen die Grundlage von Freiheit, Gerechtigkeit und Frieden in der Welt b",
    "MANIMBANG manowo ngakoni marang martabat alamiah sarta hak-hak kang padha lan pinasthi ing saben warganing kulawarga umat manungsa, mujudake landhesaning kamardikan, kaadilan sarta bedhamening donya.\n",
    "모든 인류 구성원의 천부의 존엄성과 동등하고 양도할 수 없는 권리를 인정하는 것이 세계의 자유, 정의 및 평화의 기초이며,\n인권에 대한 무시와 경멸이 인류의 양심을 격분시키는 만행을 초래하였으며, 인간이 언론과 신앙의 자유, 그리고 공포와 결핍으로부터의 자유를 누릴 수 있는 세계의 도래가 모든 사람들의 지고한 열망으로서 천명되어 왔으며,\n인간이 폭정과 억압",
    "ప్రతిపత్తిస్వత్వముల విషయమున మానవులెల్లరును జన్మతః స్వతంత్రులును సమానులును నగుదురు. వారు వివేదనాంతఃకరణ సంపన్నులగుటచే పరస్పరము భ్రాతృభావముతో వర్తింపవలయును.",
    "Với nhận thức rằng:\nViệc thừa nhận nhân phẩm vốn có, các quyền bình đẳng và không thể tách rời của mọi thành viên trong gia đình nhân loại là cơ sở cho tự do, công bằng và ",
    "ज्या अर्थी मानव कुटुँवातील सर्व व्यक्तींची स्वाभाविक प्रतिष्ठा व त्यांचे समान व अहरणीय अधिकार यांना मान्यता देणे हा जगांत स्वातंत्र्य, न्याय व शांतता यांच्या प्रस्थापनेवा पाया होय,\nज्या अर्थी, मानवी अ",
    "Considerato che il riconoscimento della dignità inerente a tutti i membri della famiglia umana e dei loro diritti, uguali ed inalienabili, costituisce il fondamento della libertà, della giustizia e de",
    "மனிதக் குடும்பத்தினைச் சேர்ந்த சகலரினதும் உள்ளார்ந்த கௌரவத்தையும், அவர்கள் யாவரதும் சமமான, பராதீனப்படுத்த முடியாத உரிமைகளையும் அங்கீகரித்தலே உலகத்தில் சுதந்திரம், நீதி, சமாதானம் என்பவற்றுக்கு அடிப்படை",
    "İnsanlık ailesinin bütün üyelerinde bulunan haysiyetin ve bunların eşit ve devir kabul etmez haklarının tanınması hususunun, hürriyetin, adaletin ve dünya barışının temeli olmasına,\nİnsan haklarının t",
    "چونکہ ہر انسان کی ذاتی عزت اور حرمت اور انسانوں کے مساوی اور ناقابلِ انتقال حقوق کو تسلیم کرنا دنیا میں آزادی، انصاف اور امن کی بنیاد ہے،\nچونکہ انسانی حقوق سے لاپروایٔی اور ان کی بے حرمتی اکثر ایسے وح",
    "કેમ કે માનવકુટુંબના દરેક સભ્યની પરંપરા-પ્રાપ્ત પ્રતિષ્ઠાને અને સમાન અને અસંકામ્ય અધિકારોને માન્યતા આપવી એ જગતની સ્વતંત્રતા, ન્યાય અને શાંતિનો પાયા છે,\nકેમ કે માનવ અધિકારોની ઉપેક્ષા અને અપમાન કરવાથી એવ",
    "ZWAŻYWSZY, że uznanie przyrodzonej godności oraz równych i niezbywalnych praw wszystkich członków wspólnoty ludzkiej jest podstawą wolności, sprawiedliwości i pokoju świata,\nZWAŻYWSZY, że nieposzanowa",
    "Беручи до уваги, що визнання гідності, яка властива всім членам людської сім'ї, і рівних та невід'ємних їх прав є основою свободі, справедливості та загального миру; і\nберучи до уваги, що зневажання і",
    "जेँ कि मानव परिवारक सकल सदस्यक जन्मजात गरिमा आओर समान एवं अविच्छेद्य अधिकारकेँ स्वीकृति देब स्वतन्त्रता, न्याय आ' विश्वशान्तिक मूलाधार थिक,\nजेँ कि मानवाधिकारक अवहेलना आ' अवमाननाक परिणाम होइछ एहन नृशंस",
    "മനുഷ്യ സമുദായത്തിന്റെ ജന്മസിദ്ധമായ അന്തസ്സും സമാവകാശവും ലോകത്തില്‍ സ്വാതന്ത്ര്യം, നീതി, സമാധാനം എന്നിവയുടെ സ്ഥാപനത്തിന്നു അടിസ്ഥാനമായിരിക്കുന്നതിനാലും മനുഷ്യാവകാശങ്ങളെ വകവെക്കാത്തതുകൊണ്ടു മനം മടുപ്പിക",
    "ಮಾನವ ಕುಟುಂಬದ ಸಮಸ್ತ ಸದಸ್ಯರ ಸಹಜ ಗೌರವವನ್ನೂ ಸಮಾನವೂ ಅನನ್ಯಹಾರ್ಯವೂ ಆದ ಹಕ್ಕುಗಳನ್ನು ಅಂಗೀಕರಿಸುವುದು ಪ್ರಪಂಚದಲ್ಲಿ ಸ್ವಾತಂತ್ರ್ಯದ ಧರ್ಮಶಾಂತತೆಗಳ ತಳಹದಿಯಾಗಿರುವುದರಿಂದಲೂ.\nಮಾನವ ಹಕ್ಕುಗಳಗೆ ತೋರಿಸಲ್ಪಟ್ವ ಉಪೇಕ್ಷೆ ತಿರಸ್ಕಾರಗಳು, ಮಾನ",
    "လူခပ်သိမ်း၏မျိုးရိုးဂုဏ်သိက္ခါနှင့်တကွ လူတိုင်းအညီအမျှခံစားခွင့်ရှိသည့် အခွင့်အရေးများကို အသိအမှတ် ပြုခြင်းသည် လူခပ်သိမ်း၏လွတ်လပ်မှု၊ တရားမျှတမှု၊ ငြိမ်းချမ်းမှုတို့၏ အခြေခံအုတ်မြစ်ဖြစ်သောကြောင့်လည်းက",
    "ସବୁ ମନୁଷ୍ୟ ଜନ୍ମୁକାଳରୁ ସ୍ଵଧୀନ, ଷେମାନଙ୍କର ମର୍ସ୍ୟାଡା ଓ ଅଧିକାର ସମାନ, ସେମାନଙଠାରେ ପ୍ରବଁ ଓ ବିବେକ ନିହ ଟଛି, ସେମାନେ ପରସ୍ପର ପବ ବ୍ରାଦହବ ପୋଷଷ କରି ଠାର୍ପ୍ୟ ଜକିରା ଡରକାର.",
    "Ulfinni fi wal-qixxummaan ilmoo namaa kan uummattoota hundaa akka ifatti kabajamu gochuun bu'ura bilisummaa, haqaa fi nageenya addunyaa waan ta'eef;\nMirga namummaa irra ijjechuun yookaan tuffachuun ye",
    "Kwa kuwa kukiri heshima ya asili na haki sawa kwa binadamu wote ndio msingi wa uhuru, haki na amani duniani,\nKwa kuwa kutojali na kudharau haki za binadamu kumeletea vitendo vya kishenzi ambavyo vimeh",
    "Dumasar ku ayana timbangan yen pangakuan kana ayana martabat alamiah katut hak-hak anu sarua ti sakumna anggota kulawarga manusa nu dasarna kamerdikaan, kaadilan jeung perdamaian di dunya.\nKu ayana ti",
    "Considerând că recunoașterea demnității inerente tuturor membrilor familiei umane și a drepturilor lor egale și inalienabile constituie fundamentul libertății, dreptății și păcii în lume,\nConsiderând ",
    "ਜਦ ਕਿ ਮਨੁੱਖੀ ਪਰਿਵਾਰ ਦੇ ਸਾਰੇ ਮੈਂਬਰਾਂ ਦੀ ਧੁਰ ਅੰਦਰਲੀ ਅੰਤਰੀਵ ਸ਼ਾਨ ਅਤੇ ਬਰਾਬਰੀ ਤੇ ਨਾ ਟਾਲੇ ਜਾ ਸਕਣ ਵਾਲੇ ਅਧਿਕਾਰ ਸੰਸਾਰ ਵਿਚ ਆਜ਼ਾਦੀ, ਇਨਸਾਫ ਅਤੇ ਅਮਨ ਦੀ ਨੀਂਹ ਹਨ ।\nਜਦ ਕਿ ਮਨੁੱਖੀ ਅਧਿਕਾਰਾਂ ਪ੍ਰਤੀ ਨਿਰਾਦਰ ਅਤੇ ਨਫ਼ਰਤ ਦਾ ਸਿੱਟਾ ਉ",
    "सबहिं के ओकर उचित सम्मान आओर मानव परिवार के सभे आदिमी के बराबरी के हक ही विश्व समुदाय के अजादी, न्याय आओर शांति के बुनियाद हवे।\nमानवाधिकार के उल्लंघन हरदम अमानवीय काज के कारणो होखेला जा के चलते मानवता",
    "በዩኔስኮ፡ተዘጋጅቶ፡በኢትዮጵያ፡ብሄራዊ፡ኮሚሽን፡ተተረጎመ",
    "Ganin cewa ‘yanci da adalci da zaman lafiya ba za su girku a duniya ba, sai in an amince da cewa: dukkan ‘yan-adam suna da mutunci, kuma suna da hakkoki na kowa daidai da na kowa, waɗanda ba za a iya ",
    "BUDUĆI da su priznavanje urođenog dostojanstva i jednakih i neotuđivih prava svih članova ljudske obitelji temelj slobode, pravde i mira u svijetu,\nBUDUĆI da su nepoštivanje i preziranje prava čovjeka",
    "БУДУЂИ да су признавање урођеног достојанства и једнаких и неотуђивих права свих чланова људске обитељи темељ слободе, правде и мира у свијету,\nБУДУЂИ да су непоштивање и презирање права човјека имали",
    "Budući da su priznavanje uroćenog dostojanstva i jednakih i neotućivih prava svih ćlanova ljudske obitelji temelj slobode, pravde i mira u svijetu,\nBudući da su nepoštovanje i preziranje prava ćovjeka",
    "Overwegende, dat erkenning van de inherente waardigheid en van de gelijke en onvervreemdbare rechten van alle leden van de mensengemeenschap grondslag is voor de vrijheid, gerechtigheid en vrede in de",
    "Pošto je priznavanje urođenog dostojanstva i jednakih i neotuđivih prava svih članova ljudske porodice temelj slobode, pravde i mira u svetu;\npošto je nepoštovanje i preziranje prava čoveka vodilo var",
    "Пошто је признавање урођеног достојанства и једнаких и неотуђивих права свих чланова људске породице темељ слободе, правде и мира у свету;\nпошто је непоштовање и презирање права човека водило варварск",
    "โดยที่การยอมรับนับถือเกียรติศักดิ์ประจำตัว และสิทธิเท่าเทียมกันและโอนมิได้ของบรรดา สมาชิก ทั้ง หลายแห่งครอบครัว มนุษย์เป็นหลักมูลเหตุแห่งอิสรภาพ ความยุติธรรม และสันติภาพในโลก\nโดยที่การไม่นำพาและการเหย",
    "Herwekî nasîna weqara pêgirê hemû endamên malbata mirovî û mafên wan ên wekhev û (jênager) bingehe azadî, dad û aşitiya cihanê pêk tîne,\nHerwekî nenasîn û piçûkdîtina mafên mirov rê dan barbar ku wijd",
    "Bí ó ti jé̩ pé s̩ís̩e àkíyèsí iyì tó jé̩ àbímó̩ fún è̩dá àti ìdó̩gba è̩tó̩ t̩í kò s̩eé mú kúrò tí è̩dá kò̩ò̩kan ní, ni òkúta ìpìlè̩ fún òmìnira, ìdájó̩ òdodo àti àlàáfíà lágbàáyé,\nBí ó ti jé̩ pé àìka ",
    "Inson oilasi barcha aʼzolariga hos boʻlgan qadr‐qimmat hamda ularning teng va ajralmas huquqlarini tan olish erkinlik, adolat va yalpi tinchlikning asosi boʻlishini eʼtiborga olib,\nInson huquqlarini m",
    "Инсон оиласи барча аъзоларига ҳос бўлган қадр‐қиммат ҳамда уларнинг тенг ва ажралмас ҳуқуқларини тан олиш эркинлик, адолат ва ялпи тинчликнинг асоси бўлишини эътиборга олиб,\nИнсон ҳуқуқларини менсимас",
    "Ebe ọ bụ na nghọta ugwu ekere uwa na ikike nha anya a pụghị ịnapụ mmadụ nke dirị onye ọ bụla bi n'ụwa bụ ntụala nke inwere onwe, ikpe nkwụmọtọ na udo n'elụ ụwa.\nEbe nleghara anya na nleli ikike mmadu ",
    "मानव परिवारका सबै सदस्यहरूको अन्तर्निहित मान तथा सम्मान र अवछिन्न अधिकारहरूको मान्यता नै स्वतन्त्रता, न्याय, र शान्तिको आधार भएकोले,\nमानव अधिकारहरू प्रति अवहेलना तथा अनादरको परिणामबाटै नै काम भड मानव ",
    "Samtamg ang pag-ila sa tiunay nga kabililhon ug sa managsama ug dili maagaw nga mga katungod sa tanang sakup sa tawhanong banay mao and sukaranan sa kagawasan, hustisya ug kalinaw sa kalibutan.\nSamtan",
    "دنیا دے سارے انسان ہکو ڄئے تے نہ مکڻ والے حقوق تے ازادیاں گھن تے پیدا تھیڈن ۔ اقوام متحدہ نے ہر کہیں دے حقوق دی حفاظت تے ودھارے دا جھنڈا اچار کھڻ دا ارادہ کیتا ہوے ۔ جیمبڑا اقوام متحدہ دے منشور دا حصہ",
    "Sapagkat ang pagkilala sa katutubong karangalan at sa pantay at di-maikakait na mga karapatan ng lahat ng nabibilang sa angkan ng tao ay siyang saligan ng kalayaan, katarungan at kapayapaan sa daigdig",
    "Tekintettel arra, hogy az emberiség családja minden egyes tagja méltóságának, valamint egyenlő és elidegeníthetetlen jogainak elismerése alkotja a szabadság, az igazság és a béke alapját a világon,\nTe",
    "Бәшәр аиләсинин бүтүн үзвләринә хас олан ләјагәт һиссинин вә онларын бәрабәр вә ајрылмаз һүгугларынын танынмасынын азадлыг, әдаләт вә үмуми сүлһүн әсасы олдуғуну нәзәрә алараг,\nинсан һүгугларына етина",
    "Bəşər ailəsinin bütün üzvlərinə xas olan ləyaqət hissinin və onların bərabər və ayrılmaz hüquqlarının tanınmasının azadlıq, ədalət və ümumi sülhün əsası olduğunu nəzərə alaraq,\ninsan hüquqlarına etina",
    "සියලූ මනුෂ්‍යයෝ නිදහස්ව උපත ලබා ඇත. ගරුත්වයෙන් හා අයිතිවාසිකම් සමාන වෙති. යුක්ති අයුක්ති පිළිබඳ හැඟීමෙන් හා හෘදය සාක්ෂියෙන් යුත් ඔවුනොවුන්වුන්ට සැළකිය යුත්තේ සහෝදරත්වය පිළිබඳ හැඟීමෙනි.",
    "Медбы тӧдны, что морт семьяись быд членлӧн эм аслас достоинство, а сылӧн ӧткодь да мырддьытӧм правоэз лоӧ воля, справедливость да лӧнь олан понда основаӧн;  медбы тӧдны, что морт правоэз нем туйӧ пукт",
    "Επειδή η αναγνώριση της αξιοπρέπειας, που είναι σύμφυτη σε όλα τα μέλη της ανθρώπινης οικογένειας, καθώς και των ίσων και αναπαλλοτρίωτων δικαιωμάτων τους αποτελεί το θεμέλιο της ελευθερίας, της δικαι",
    "U vědomí toho,\nže uznání přirozené důstojnosti a rovných a nezcizitelných práv členů lidské rodiny je základem svobody, spravedlnosti a míru ve světě,\nže zneuznání lidských práv a pohrdání jimi vedlo ",
    "सभे के ओकर उचित सम्मान तथा मानव परिवार के सब सदस्य के बराबरी के हक ही विश्व समुदाय के स्वतंत्रता, न्याय और शांति के बुनियाद हई।\nमानवाधिकार के उल्लंघन हरदम से अमानवीय काम के बजह से ही होव हई। जेकरा से ",
    "Прымаючы пад увагу, што прызнанне годнасці, якая ўласціва ўсім членам чалавечай сямʼі, і роўных і неадʼемных правоў іх зʼяўляецца асновай свабоды, справядлівасці і ўсеагульнага міру; і\nпрымаючы пад ув",
    "Heverina fa ny fankatoavana ny fahamendrehan'olombelona sy ny zony mitovy ary tsy azo tohintohinina dia anisan'ny fototry ny fahafahana, ny rariny ary ny fandriam-pahalemanana eran-tany, Heverina fa n",
    "Saestona pangakowan drajat secara koddrat klaban hak se dha-padha sareng muttlak dhari sadajana anggota kaluwarga manossa enggi panika dasar dhari kamardikaan, keadilan sareng perdamaian e dunnya.\nSae",
    "Popeza kuti citsimikizo ca khalidwe loyenera la munthu mu banja lonse ndico tsinde la ufulu, ungwiro ndi mtendere pa dziko liri lonse la pansi,\nPopeza kuti kusalabadira ufulu wa munthu kwabweretsa kha",
    "Kawsaypi yuyashpa, kishpiriy, paktakay, allpapachapi kasikllakawsay tiksi\nkakpimi tukuy runakuna sumak kawsayta charichun nishpa riksin; shinallatak\nsumaykayta(dignidad), paktapakta hayñita ayllumanta",
    "Ikoraniro rusange lilibutsa ko:\n- Ugushyira ukizana, ituze n'ubutungane mu bihugu bishingiye ku karusho ka buli muntu, kadasibangana, gahamya icyubahiro akwiye n'agaciro twese duhulijeho,\n- Gusuzugura",
    "Ngokunjalo ukwamukelwa ngokuzuzwa kwesithunzi samalungelo alinganayo najwayelekile awowonke amalunga omndeni wesintu kuyisisekelo senkululeko, sobulungiswa noxolo emhlabeni,\nNgokunjalo ukunganakwa nok",
    "Като взе предвид, че признаването на достойнството, присъщо на всички членове на човешкия род, на техните равни и неотменими права представлява основа на свободата, справедливостта и мира в света,\nКат",
    "Enär erkännandet av det inneboende värdet hos alla medlemmar av människosläktet och av deras lika och oförytterliga rättigheter är grundvalen för frihet, rättvisa och fred i världen,\nenär ringaktning ",
    "Na botalaka ‘te kondima limemya ya bato nyonso ya molongo pe makoki ma bango oyo ezali ndenge moko pe bakoki kopimela moto te ezali tina ya bonsomi, bosembo pe kimpa kati ya molongo. Na botalaka ‘te k",
    "Iyadoo aqoonsiga sharafta uu ku dhashay iyo xuquuqda maguurtada ah ee ay u siman-yihiin dadweynaha adduunku uu yahay saldhigga xorriyada, caddaaladda iyo nabadda dunida.\nIyadoo aqoonsi la'aanta iyo ku",
    "Ad leb ghad bob did doub nend, leb leb seat mex zend yanl gaot nianb lib, zenx renb baob nend nis ad leb ghad bob did doub nend zib youl, zhenb yib gaot hol nbinl nangd jid cut.\nJex zenx renb gaot wud",
    "Idinto ta bigbigen iti naisigsigud a dayaw ken panagpapada ken ti di maipaidam nga kalintegan dagiti amin a puli tao nga batayan ti wayawaya, hustisya ken ikakapya ti lubong.\nIdinto ta iti saan nga pa",
    "Адам баласы үйелменінің барлық мүшелеріне тән қадір‐қасиетін, құқықтарының теңдігі мен тартып алынбайтындығын тану, бостандық пен әділдіктің және жалпыға бірдей бейбітшіліктің негізі болып табылатынын",
    "insanlar ailisining barliq ezalirining özige xas izzet-hörmitini shuningdek ularning barwer we tewrenmes hoquqini etrap qilishning dunyawi erkinlik, heqqaniyet we tinchliqning asasi ikenliki.\nkixilik ",
    "ئىنسانلار ئائىلىسىنىڭ بارلىق ئەزالىرنىڭ ئۆزىگە خاس ئىززەت-ھۆرمىتىنى شۇنىڭدەك ئۇلارنىڭ باراۋەر ۋە تەۋرەنمەس ھوقۇقىنى ئەتراپ قىلىشنىڭ دۇنياۋى ئەركىنلىك، ھەققانىيەت ۋە تىنچلىقنىڭ ئاساسى ئىكەنلىكى،\nكىشىلى",
    "Lè nou sonje ke desizyon rekonèt valè chak moun genyen nan li menm-menm kòm moun, desizyon rekonèt tout moun gen menm dwa egalego, dwa pèsonn pa ka wete nan men yo, desizyon sa a se veritab baz libète",
    "ដោយយល់ឃើញថា ការទទួលស្គាល់សេចក្ដីថ្លៃថ្នូរជាប់ពីកំណើត និងសិទ្ធិស្មើភាពគ្នា និងសិទ្ធិមិន អាចលក់ ដូរ ផ្ទេរ ឬដកហូតបានរបស់សមាជិកទាំងអស់នៃគ្រួសារមនុស្ស គឺជាគ្រឹះនៃសេរីភាព យុត្ដិធម៌ និងសន្ដិភាពក្នុងពិភពលោក។\n",
    "Ɛsiane sɛ adasamma ahunu sɛ, yɛsusu onipa, bu no, di no ni a, ɛbɛma ahofadie, atɛntenenee ne asomdwoeɛ ase atim wɔ wiase yi mu nti,\nƐsiane sɛ atuateɛ ne obuo a wɔammu adasamma yiedie yi de anitan ne a",
    "Ɔnam dɛ adasa hɔn enyimnyam yɛ pɛr na ndzinoa a obi nngye mmfi hɔn nsamu a wɔwɔ no ngyetomu nye wiadze yi mu fahodzi, pɛrpɛrdzi, ntsɛntsenenee na asomdwee ne fapem;\nƆnam dɛ tsia a yetsiatsia nyimpa ne",
    "Tungod kay ang pagkilala sang duna nga dungog kag ang alalangay kag di madula nga mga katarungan sang tanan nga lahi sang tao amo ang pundasyon sang kahilwayan, katarungan kag kalinong sang kalibutan.",
    "از آنجا که شناسائی حیثیت ذاتی کلیهٔ اعضای خانواده بشری و حقوق یکسان و انتقال ناپذیر آنان اساس آزادی و عدالت و صلح را در جهان تشکیل میدهد،\nاز آنجا که عدم شناسائی و تحقیر حقوق بشر منتهی به اعمال وحشیانه",
    "Sezvo kucherechedza hunhu nekodzero yakayenzana yomunhu wese pasi pose iriyo mviromviro yomutongero uri pachokwadi norunyararo panyika.\nSezvo kusatevera nekusvora kodzero dzevanhu zvakamboita kuti kuv",
    "Кешелек гаиләсенең бөтен әгъзаларына хас булган тигез һәм аерылгысыз хокукларны һәм кеше дәрәҗәсен тануның гаделлек һәм гомуни тынычлыкның нигезе икәнең истә тотып,\nкеше хокукларына кимсетеп һәм җирән",
    "Njengoko iimfanelo zesidima soluntu semvelo kunye neemfanelo zoluntu‐jikelele olungenakunikelwa olusisisekelo senkululeko, ubulungisa noxolo emhlabeni.\nNjengoko ukungananzi nokudelelwa kweemfanelo zol",
    "Քանզի մարդկային ընտանիքի բոլոր անդամներին ներհատուկ արժանապատվությունը և հավասար ու անօտարելի իրավունքները աշխարհի ազատության, արդարության ու խաղաղության հիմքն են․\nՔանզի մարդու իրավունքների նկատմամբ ք",
    "Sasungguahnyo pangakuan taradok martabat dasar dan hak-hak nan samo sarato mutlak dari tiok anggota kaluarga manusia adolah landasan dari kamardekaan, kaadilan dan pardamaian di dunia;\nSasungguahnyo s",
    "AANGESIEN erkenning vir die inherente waardigheid en die gelyke en onvervreembare reg van alle lede van die menslike ras die basis vir vryheid, geregtigheid en vrede in die wereld is;\nAANGESIEN minagt",
    "Pa kumona ne, kwitaba se bantu bonsu ba pa buloba badi ne buneme ne makokeshi amwe ne a kashidi ke nshindamenu wa budikadidi, bwakane ne bupole pa buloba bujima;\nPa kumona ne, dibenga kumanya ne dipep",
    "ᱫᱟ᱕ ᱨᱮᱡ ᱜᱚᱫ",
    "༈ འགྲོ་བ་མིའི་ཁྱིམ་ཚང་ཁག་གི་ནང་མི་ཡོངས་ལ་རང་བཞིན་ཉིད་ནས་ཡོད་པའི་ཆེ་མཐོངས་དང་འདྲ་མཉམ། སུས་ཀྱང་འཕྲོག་ཏུ་མི་རུང་བའི་ཐོབ་ཐང་བཅས་ཀྱི་གནད་དོན་རྟོགས པར་བྱེད་པ་ནི། འཛམ་གླིང་ནང་གི་རང་དབང་དང༌། དྲང་བདེན། ཞི་བདེ་",
    "ኦብ ዓለም ንናይ ኩሎም ሰባት ተፈጥሮኦዊ ክብሪትን ንማዕሪን ዘይገሃሱን ሰብኦዊ መሰላትን ምቕባል መሰሪት ነፃነት፣ ፍትሕን ሰላምን ስለ ዝኾነ፣\nንሰብኦዊ መሰላት ኦብ ግምት ዘይምእታውን ምጥሓስን ንሕልና ወዲ ሰብ ዘቑሰለን ኦሪሜናዊ ተግባራት ዘስዓበን ምዃኑ ፣ ናይ ዘሪባን እምነትን ነፃነት ዘለዋ፣ ካብ ፍርሕን ፀገምን ",
    "Kun ihmiskunnan kaikkien jäsenten luonnollisen arvon ja heidän yhtäläisten ja luovuttamattomien oikeuksiensa tunnustaminen on vapauden, oikeudenmukaisuuden ja rauhan perustana maailmassa,\nkun ihmisoik",
    "Ibonye ko kwemera ko abantu bose bategerezwa guhabwa agateka n'ukubahirizwa kimwe, ari ryo shingiro ryukwishira n'ukwizana, ubutungane n'amahoro kw'isi.\nIbonye ko kutemera n'ukudakwirikiza ingingo zub",
    "Vo vedomí že uznanie prirodzenej dôstojnosti a rovnych a neodcudzite ľných práv členov ľudskej rodiny je základom slobody, spravodlivosti a mieru na svete,\nže zneuznanie ľudských práv a pohrdanie nimi",
    "Adamzat kowmunyň agzalaryna deň derejede degişli mertebäniň we olaryň deň we aýrylmaz hukuklarynyň ykrar edilmeginiň azatlygyň, adalatyň hem‐de ählumumy dynçlygyň esasy bolup durýandygyny göz öňünde t",
    "Баш ассемблея әхлиумумы парахатчылыгың, адалатлылыгың ве азатлыгың эсасы болуп дурян адамзат машгаласының агзаларының хеммесине махсус болан мертебесини, дең дереҗели ве айрылмаян хукукларыны гөз өңүн",
    "Da anerkendelse af den mennesket iboende værdighed og af de lige og ufortabelige rettigheder for alle medlemmer af den menneskelige familie er grundlaget for frihed, retfærdighed og fred i verden,\nda ",
    "Mbasi njohja e dinjitetit të lindur të të drejtave të barabarta dhe të patjetërsueshme të të gjithë anëtarëve të familjes njerëzore është themeli i lirisë, drejtësisë dhe paqes në botë;\nmbasi mosrespe",
    "Da anerkjennelsen av menneskeverd og like og umistelige rettigheter for alle medlemmer av menneskeslekten er grunnlaget for frihet, rettferdighet og fred i verden,\nda tilsidesettelse av og forakt for ",
    "GUNGUNO yimanyikile giki ikujo lya ng’wa munhu na sekge ya banhu muwelelo hu shili jandije ja wiyabi, sekge na mhola ya welelo,\nGUNGUNO ubudalahi bo sekge ya banhu hi jile jandije ja shitwa ja bubi ha",
    "Na hïngängö bîanî atene nëngö terê tî zo na lïngbïngö terê tî ângangü tî lo laâ sï ayeke na gündâ tî zarä , tî nzönî ngbanga na tî sîrîrî na ndö tî dûnîa,\nNa hïngängö nî pëpëe na këngö ândiä tî bata n",
    "Då det å godkjenne det naturlege menneskeverdet med like og umissande rettar for alle menneske på jorda er grunnlaget for fridom, rettferd og fred i verda,\nog då hån og vørdsløyse mot menneskerettane ",
    "הואיל והכרה בכבוד הטבעי אשר לכל בני משפהת האדם ובזכויותיהם השוות והבלתי נפקעות הוא יסוד החופש, הצדק והשלום בעולם.\nהואיל והזלזול בזכויות האדם וביזוין הבשילו מעשים פראיים שפגעו קשה במצפונה של האנושות; ו",
    "B wilgame tɩ ninsaal bʊʊd fãa tara a burkĩndlim la a yel-segdɩ tõod sẽn pa yɩɩd a to, tɩ b pa tõen n dɩk tõod-bãmb n koos bɩ n tek a badawã, n yaa dũni wã bãan gãaga, ned fãa sẽn so a vɩɩm tɩ yembd ",
    "Бо дарназардошти ин, ки этирофи қадру қимат ба ҳамаи аҳли башар хос буда, ҳуқуқи баробар ва дахлнопазири онҳо асоси озодӣ, адолат ва сулҳи умум аст;\nбо дарназардошти ин, ки таҳкиру беэътиноӣ ба ҳуқуқи",
    "Considerant que el reconeixement de la dignitat inherent i dels drets iguals i inalienables de tots els membres de la família humana és el fonament de la llibertat, la justícia i la pau en el món,\nCon",
    "Ka hona he, ho amohela seriti seo motho a tswalwang le sona ha mmoho le ditokelo tse lekanang tseo motho a ke keng a di amohuwa tsa batho bohle, ke mohlodi wa tokoloho, toka le kgotso lefatsheng.\nKa h",
    "ვინაიდან ადამიანთა ოჯახის ყველა წევრისათვის დამახასიათებელი ღირსების და თანასწორი და განუყოფელი უფლებების აღიარება წარმოადგენს თავისუფლების, სამართლიანობის და საყოველთაო მშვიდობის საფუძველს; და\nვინაიდ",
    "Huli ta an pagkamidbid kan dignidad intrinseca asin an parantay asin inalienableng mga derechos kan gabos na miembros kan familia humana iyo an fundacion nin katalinkasan , justicia asin katoninongan ",
    "A liberdade, a xustiza e a paz no mundo teñen por base o recoñecemento da dignidade intrínseca e dos dereitos iguais e inalienables de tódolos membros da familia humana;\nO descoñecemento e o menosprez",
    "ດ້ວຍເຫດວ່າ: ການຮັບຮູ້ກຽດຕິສັກອັນມີປະຈຳຢູ່ຕົວບຸກຄົນໃນວົງສະກຸນຂອງມະນຸດທຸກໆຄົນ ແລະ ການຮັບຮູ້ສິດສະເໝີພາບ ແລະ ສະເຖຍລະພາບຂອງບຸກຄົນເຫຼົ່ານັ້ນ ປະກອບເປັນຮາກຖານຂອງສິດເສລີພາບ ຍຸດຕິທຳ ແລະ ສັນຕິພາບຂອງໂລກ.\nດ້ວຍເຫດວ",
    "Atsižvelgdama į tai, kad visiems žmonių giminės nariams būdingo orumo ir lygių bei neatimamų teisių pripainimas yra laisvės, teisingumo ir taikos pasaulyje pagrindas;\natsižvelgdama į tai, kad žmogaus ",
    "Okukolela ukulihiso ekalo lityamela kovimata mata vyepata lyomanu kwenda omoko yasoka kwavosi. Kwenda yesunga yilinga ombembwa yimwe yapana yesunga kwenda yombembwa v’olwali.\nOkukolela eci kacakulihiw",
    "Go ntse jalo gore kamogelo ya tlhago ya seriti le tekatekano le ditshwanelo tse di sa amologanngweng tsa ditokololo tsotlhe tsa losika lwa motho ke motheo wa kgololosego, bosiamisi le kagiso mo lefats",
    "Le ge re dutše re tseba gore seriti seo motho a belegilwego ka sona le tekatekanelo gammogo le ditokelo tšeo di sa tšeelwego kgang tša batho ka moka ke motheo wa tokologo ya toka le khutšo lefseng ka ",
    "Manimbang riantukan pangangken ring subhakarma lan hak-hak sane pateh tur pastika saking paguyuban kulawarga manusa sami inggih punika dasar kemerdekaan, keadilan lan perdamaian ring jagat.\nManimbang ",
    "Pura ritimbang nasengnge dipattongengngi ri asengnge allebbireng napanjajie puang seuwae na hak-hak pada nappunnai manengnge salasureng padatta rupa tau ianaro simulangenna riasengnge merdeka e . Ade'",
    "Adəgaima tada adamganabebe nəmngalwonzə kambaata adə-a nəmnduaso kalkalnzə-a hakkiwanzə Alanjo-adə shima ferno nəmkambe-a jirebe-a nəlefabe-aro dunya ngason asutəna,\nAdəgaima hakkiwa adamganabero cist",
    "Kpukpuru owo emana ye ukemukem ye asana asana unen ye ndamana uboho-ufin.\nMboho Edidiana Kiet Ofuri Ekondo enehede ebiere ndimum nkama, ndisuan etop mbana, nyun mkpeme mme ndamana unen kpukpuru owo. E",
    "Ekitiibwa ky'omuntu eky'obutonde; okwenkanankana, wamu n'obuyinza obutayinza kugyibwawo ebyabantu bonna, gwe musingi gw'eddembe; obwenkanya n'emirembe mu nsi.\nObanga abantu sibakikozesa kujeema 'ngeky",
    "Ta bileung‐bileung ranub lam puan han tok deulapan di dalam raga ta timang‐timang Peunyataan Umum nyan na tujoh bilangan paleng utama;\nTeuseubot bak phon “martabat alamiah” hak nyang pantaih makheulok",
    "K’a d’a kan ko dine hɔrɔnɲa ni tilennenɲa ni lafiya sintin ye hadamaden bɛɛ danbe dɔnni n’u josiraw danmakɛɲneni ye,\nK’a d’a kan ko hadamaden josiraw n’u kɔnni kɛra dannajuguya caman sababu ye minnu b",
    "Mu kutala kuma o ujitu wa kijingu wa tokala ku phunga yose ya mwiji wa’athu ni yoso ya itokelu ya sokelela ki itena ku ilanduka idibanga dimatekenu dya ufolo, dya difundisu ni dya kutululuka mu ngongo",
    "Kuhitila mu kwiteja nakulemesha muntu, chakubuka kwambula chisaka cha muntu wejima munu mukayi hichikunku kwafuma kulubuka nakudimena, wusompeshi hamu na kuwunda munu mu kayi kejima.\nKubula kulondela ",
    "Imi asmussen n lḥwerma i ttalasen akkw yâggalen n twachult talsawt d yizerfan n sen yemsawan, d nitni i d llsas n tlelli, taghdemt akkw d- tifrat deg wmadal (di ddunit).\nImi kra n widn nesmussun ara ",
    "Tungod han pagkilal-a nga an tiunay nga dignidad ug katpong ngan diri-maiwasan nga mga katungod hadton mga kaapihan kanan tawo pamilya amo an pinatatamakan han katalwasan, hustisya kalinawan han kalib",
    "היות װי דער סאַמער גרונט פֿון פֿרײַהײט, יושר, און שלום אױף דער גאָרער װעלט באַשטײט פֿון אָנערקענען דעם תּוכיקן כּבֿוד און די גלײַכע און ניט־איבערטראָגלעכע רעכט פֿון אַלע מיטגלידער פֿון דער מענטשישער מ",
    "K’à mìna à mà kó dúnya’ mànton’ bɛɛ ká kan ni bònya ye, àni kó bɛɛ ká kan sàriya’ la làkika’ la, kó ò le be bɛɛ ya hɔrɔnya’ sàbati, kà bɛɛ kánya ɲásuma’ dúnya’ sìgi’ la.\nK’à mìna à mà kó mɔgɔya hákɛ l",
    "Ñu jàpp te nangu ne sagu doomi aadama ak sañ-sañam yépp-dañu yam te kenn mënukóo jalgati, te lu lépp nekk na cës laay ci taxufeex ci mbirum àtte ak jàmm ci biir àdduna.\nÑu jàpp ne ñakk xam ak soofanta",
    "Адамзат үй‐бүлөсүнүн бардык мүчөлөрүнөтаандык болгон жогорку беделди жана алардын бирдей жана ажырагыс укуктарын таануу эркиндиктин, адилеттү үлүктүн жана жалпы тынчтыктын негизи болуп санала турганды",
    "Vunwegen wat dat Anerkennen vun de Wüürd, mit de all Minschen baren sünd, un de Rechten, de all Maten vun de Gemeenschupp vun de Minschen hebbt un de gliek un nich to verköpen sünd, de Grundlaag vun F",
    "Бидејќи признавањето на вроденото достоинство, и на еднаквите и неотуѓиви права на сите членови на човештвото се темелите на слободата, правдата и мирот во светот;\nБидејќи непочитувањето и омаловажува",
    "Okhala wira osaamiha n’edignidade ya kunla pinatamu n’editeito sawe soolikana ni sakhwawe eri variyari wa eliberdade, wa esaria ni murettele mulumwenkuni;\nOkhala wira ohisuwela n’ohisamiha edireito sa",
    "Esi woɖe dzesi kɔtɛe be, amegbetɔwo katã ƒe gomekpɔkpɔ sɔsɔe, anye gɔmeɖokpe na amegbetɔƒomea ƒe ablɔɖemenɔnɔ, nuteƒewɔwɔ kple ŋutiƒaƒa le xexeame ta la.\nEsi eme va kɔ ƒãa be, ablɔɖevinyenye si nye am",
    "Хүн төрөлхтөний гэр бүлийн бүх гишүүнд угаас заяасан нэр төр болон тэдний тэгш, салшгүй эрхийг хүлээн зөвшөөрөх нь эрх чөлөө, шударга ёс, бүх нийтийн энх тайвны үндэс мөнийг иш үндэс болгон,\nхүний эрх",
    "ker pomeni priznanje prirojenega človeškega dostojanstva vseh članov človeške družbe in njihovih enakih in neodtujljivih pravic temelj svobode, pravičnosti in miru na svetu;\nker sta zanikanje in tepta",
    "UNANCHASA, aka pachana jaqejh munañanïsina, cheqpacha amuyasisa, cheqa thakir sarjhatasa, jilan sullkanjama arnaqasa, jan nuwasisa utjañaru wayt'asiñ yati;\nUNANCHASA, jaqen walinkañapataki wakisir aru",
    "Apo kwaba ukwishiba ubucindami bwa muntu nomulinganya pamo ne nsambu shishifwile kufumyapo ku muntunse nge shinte lya buntungwa, umulinganya pamo nomutende pano isonde,\nApo uku kana posako mano nokusu",
    "Bani fabadenɲa tɔmasere le ye, hɔrɔya ni telen ani jususuma di dunuɲa dɔ,\nBani adamaya lasabati lɔnbaliya ni a la gboyaɲɛ le nanin benkanni di mɛn ka mɔɔlu lamuriti, ka kɛ sababu di fana ka mɔɔlu kunn",
    "Kɛ ɔ fin kɛ sran kwlakwa i sran bulɛ ɔ fin blɔlɔ'n ti, kɛ i sran-mmla ɔ nin sran kwlakwla liɛ'n sɛ'n ti, kɛ isɔ nin ye ɔ nin fɔundi, nanwlɛ atin, aklunjɔɛ ba mɛn nun'n ti\nKɛ ɔ fin kɛ sɛ be si'a sran-m",
    "Pro tio, ke agnosko de la esenca digno kaj de la egalaj kaj nefordoneblaj rajtoj de ĉiuj membroj de la homara familio estas la fundamento de libero, justo kaj paco en la mondo,\nPro tio, ke malagnosko ",
    "Uling ing pamangilala king likas a karangalan at king pante at ding e alingad a karapatan ding sablang lahi ding tau iyang pundasyun na ning kalayaan, hustisiya at kapayapan king yatu.\nDapat aintingdi",
    "Long luksave olsem olgeta manmeri mas igat respek, na olgeta manmeri long dispela graun igat wankain raits long bihainim laik bilong ol, long gat lo na oda na gat gutpela sindaun.\nLong ol hap nambaut ",
    "Er i fe er, icivir man mkpeiyol u ior mba ken tsombor u umace ka imaagh ki mlu u kpan ga man mer u ijir sha mimi man bem u tar cii,\nEr se fe ser, mban u iko-iwan, man u nengen er, akaa a i doo u a er ",
    "Njengoba\nkwatiswa ngekubakhona ngekwemvelo kwesitfunti sebuntfu, nekulingana lokufananako, nangekuba nemalungelo langenakwemukwa noma langenakutsatfwa kulelo nalelo lilunga lelingumndeni webuntfu, kon",
    "Ekitiinisa ky'omuntu ekyobuhangwa nikiingana nobushoborozi obutakabaasa kwihwaho eka yabantu boona heza niyo ntandikirro y'oburinganiza omu nsi yoona.\nObutagyendera ahaabugabe bw'abantu burugiremi ebi",
    "ꃰꊿꑱꈐꊿꂷꃅꐥꋭꐯꒈꃅꐥꌠꌋꆀꌅꅍꏚꍆꌠꆹ，ꋧꃅꄿꐨ，ꑗꉬꌋꆀꄮꐽꃅꐥꌠꅉꃀꉬ。\nꊽꋩꅍꏭꉜꀋꒉꌠꌋꆀꉜꄸꑠꆹꅢꎆꌊꆀꍀꆿꃅꇏꅊꀐ，ꃅꇏꋋꈨꆹꃰꊿꂄꉌꇬꍍꄀꌠꉬ，ꊿꂷꈀꐥꃅꐥꋭꅇꉉꈋꍣꌋꆀꑇꌠꄿꐨꐥ，ꄷꀋꁨꐬꀋꆠꃅꐥꌠꌋꆀꇮꃪꃅꑟꇁꌠꋧꃅꂶꌠꆹ，ꈍꄮꅉꆐꉹꁌꏓꂱꀊꂤꉌꉪꅉꉬꄷꄜꇬꄀꄉꀐ。\nꃰꊿꇬꐥꀋꄐꄉꊾꍅꊿꅷꌠꐤꁏꑠꆹ，ꏦꃤꇬꄉꀧꋭꌠꌅꅍꉬ。\nꇩꏤꈀꐥꌠꇢꊭꇬꐮꄮꃅꐥꃆꂮꀻꎆꌠꊥꎆꄻꅐ。\nꉻꏑ",
    "Aga ni maufulu gakasapagwa nago mundu jwalijose gigalembekwe ni chiwanja cha United Nations mumkamulano wakolanjikwa Universal Declaration of Human Rights.\nPa 10 December, 1948, chiwanja cha United Na",
    "Ievērojot, ka visiem cilvēku sabiedrības locekļiem piemītošās pašcieņas un viņu vienlīdzīgu un neatņemamu tiesību atzīšana ir brīvības, taisnīguma un vispārēja miera pamats, un\nievērojot, ka cilvēku t",
    "Pachantin ayllu wawaq allin kausaypi kananta yuyaykuspan, kay kamachikuy paqarin. Runaq kausay qasi kusi kausaypi kananpaq, tukuy llakipi kaspapas \"justicia\" taripananpaq. Kikin runakayninta runa masi",
    "Ti-atsea câ pricânushtearea-a nâmuziljei nativâ shi-ndrepturli egali shi nealienabili-a tutâlor membrilji-a taifâljei a omlui easti fimelju-a li-bertatiljei, a-ndriptatiuljei shi-a irinjiljei din lumi",
    "Cunsiderende chi su reconnoschimentu de sa dinnidade inerente a totu sos membros de sa famìlia umana e de sos deretos issoro eguales e inalienàbiles costìtuit su fundamentu de sa libertade, de sa zust",
    "Forsameikle as kenning for the inherent dignity and for the richts, equal and nane-alienable, o aw members o the human faimily is the foond o freedom, justice and peace in the warld,\nForsameikle as mi",
    "Hi ku xixima le svaku a ku hlonipha ka lisima ni tinfanelo leti ti lumbaka a lixaka la ximunhu y ndlela yò sungula leyi yi fanelaka ku landziwa a ku kota ku a vanhu va hanya è nkhululekeni, hi kurhula",
    "A jifa kiliyei na kɛ numu vuu kpɛlɛɛ ti maa hɛwulei lɔ towa kpaupau le laha va, tɔnya kɛɛ ndilɛli dunyihu.\nA jifa ngawulɛɛhu kɛɛ baagbuala nuvugaa ti lɔnyisia ma ti wanga a pie hindangaa na hii i wotɛ",
    "Ee nyi ɖɔ hɛnnu ɖokpo mɛ ɔ, mɛ ɖokpoɖokpo ka do susu tɔn, bɔ acɛ ɖokpo ɔ wɛ mɛbi ɖo bo e ma sixu kan fɛn kpon é ɖi mɛɖesusi jijɛ, hwɛjijɔzinzan, kpodo fifa ni tiin nu wɛkɛ ɔ bi e ɔ,\nEe nyi ɖɔ nukumamɔ",
    "Yolki, pampa ni tlatepanitalotl, ni tlasenkauajkayotl iuan ni kuali nemilistli ipan ni tlalpan, yaya ni moneki moixmatis uan monemilis, ijkinoj nochi kuali tiitstosej ika touampoyouaj.\nPampa tlaj amo ",
    "Nä caa athëëk tö e baai thök e thai yic gäm ku yithkën thoŋ tö e nyiinkën, kek aalau enhom ku thoŋ, ku dör e pinynhom.\nKu nä ci yiith e raan mar ekɔc nhiim, ku dhalkek bi kuöc lööi bɛ̈i epion e raanic",
    "Lisiku lya 10 Disemba 1948, Lukumbi Lukulu lwa Umoja wa Vilambo lunihaula na kuhumya lilove lya vilambo lya wasa wa vanu. Lilove alino lihumile baada ya chilambo chohechohe kupanyana ding’ondo ding’ul",
    "Case'bi deo'ye, co̱ñe gu̱i'ne jeoñe ba̱yë, ja̱je̱ sia'hue'ña ñase'erebare sa'nahuë\nbayë sia'yëo̱uë maca jëaye ba'ye gu̱i'ne sioma'ñe baiji sia'bai̱ tsëcabëa̱ bai'ye.\nJa̱je̱ baio̱uëreta'a goachayë ñama",
    "Yee ɖitisaa se pʊmʊna ɛyaa se pɛwɛɛ kɩmaŋ wala ɛsɩndaa nɛ pɩkɛna wazaɣ pʊyʊ kɔyɔ, ɖitisaa ɖɔɖɔ se peeɖe ɛjaɖɛ yɔɔ tɩ-yɔɔ wɛʊ, toovonum nɛ lahɛzɩyɛ palɩɣna;\nƉɩnaa se ɛyʊ wala tɔm kɩɩsɩŋ nɛ tɩ-yɔɔ kɩɩɖɔ",
    "Ɔwa ta salata kʌsɔthnɛ ʌyiki a komʌnɛ aŋ fəm akəpet, ɔwa yi ʌmari məthənʌnɛ a komʌnɛ ŋa‐e, ŋa yi ʌŋgbeth ŋa rʌwankom, mʌlompi, yi mʌthɔfəl ka nɔru.\nƆwa, kʌ kʌlʌ agbʌp yi kʌsay ʌmari ma aŋfəm akəpet mʌ",
    "Mbuli mbokunga kulemeka muntu oonse ncizyalilwa ca lwaanguluko lwa mikwasyi yoonse kuba matalikilo akuliiba, kukwabililwa amulawo alimwi aluumuno munyika:\nKakuli kutalemeka alimwi akutyola milawo ya l",
    "Pidades silmas, et inimkonna kõigi liikmete väärikuse, nende võrdsuse ning võõrandamatute õiguste tunnustamine on vabaduse, õigluse ja üldise rahu alus; ja\npidades silmas, et inimõiguste põlastamine j",
    "O ga na a faayi nan ti saran xabiilanun doronde do I taqu tinamto ya na du-kiteye, teleŋontaaxun do jamun gondoman ŋa duna noxo.\nO ga na a faayi nan ti soron taqun turvinbalaaxun do i roxomaxantaaxun ",
    "Ha kulemesa uningikiso wa yeswe ize inatela hali mbunga yeswe ya cisemuka nyi ize inatela eswe cimwikha nyi kusa ize inatela ha kutama, ya kusamba nyi kutama kanawa mu cifuci.\nKweca kulemesa uningikis",
    "Be abɔ nɛ a le odehe si himi nɛ Mawu bɔ adesahi tsuo nɛ a hi si ngɛ je mi, nɛ e ha nɔ tsuaa nɔ he blɔhi sɔsɔɛ, nɛ nɔ ko be he blɔ nɛ e kpɔɔ ngɛ a dɛ ɔ, e ji he jɔmi kɛ dami same yemi kɛ tue mi jɔmi a ",
    "ܡܢ ܣܒܒ ܡܘܕܝܬܐ ܒܐܝܩܪܐ ܫܪܫܢܝܐ ܠܟܠܗ ܗܕܡܐ ܕܟܠܦܬ ܕܒܪܢܫܘܬܐ ܘܒܙܕܩܐ ܠܐ ܡܬܝܗܒ݂ܢܐ ܐܝܢܐ ܐܣܟܝܡܐ ܕܚܐܪܘܬܐ ܘܟܝܢܘܬܐ ܘܫܠܡܐ ܓܘ ܬܝܒ݂ܠ.\nܡܢ ܣܒܒ ܦܠܛܐ ܕܠܐ ܡܝܩܪܬܐ ܘܡܣܠܝܬܐ ܕܙܕܩܐ ܐܢܫܝܐ ܝܒ݂ܕܥܢܐ ܠܥܒ݂ܕܘܝܬܐ ܒܪܒܪܝܐ ܘܥܓܙܢܐ ܠܐܢܝܬ ܕܒܪ",
    "Vbene a na mie wee ayere ero wee etin ne o kheke emwan hia fere oro re eyato oghe arhiegbe, emwanta kevbe ofunmwengbe vbe agbon.\nVbene a na mie wee etin emwin ne o kheke ne omwan ne a ma ka yo, ne o s",
    "Akɛni aŋɔɔ nɔ akɛ afɔ gbɔmɛi adesai fɛɛ akɛ mɛi ni yeɔ egbɔ kɛ heyeli ko ni anyɛŋ ashɔ̃ yɛ amɛdɛŋ, ni nomɛi ji heyeli, jalɛsane kɛ toiŋjɔlɛ shishifãi yɛ je lɛ mli hewɔ lɛ,\nAkɛni bu ni abuuu, kɛ asaŋ ",
    "Nakutalaka ti kutambula ngenda ya binama nyonso ya dikanda na ya baluve ya bawu a kudedakana mpe yina balenda kuyimina bawu ve ke lufulu ya kimpwanza, ya budedede mpe ya ngemba na kati ya yinza muvimb",
    "Uuna mpoka pwa taambwa ko esimano lyomuntu pavalo nuuthikepamwe osho wo uuthemba wopaumwene waantu ayehe yomezimo lyuuntu ogwo omukanka gwemanguluko, uuyuki nombili muuyuni.\nUuna mpoka uuthemba womunt",
    "QAWARISUNYA: Libre kawsakuywan kay pachapi tukuy imapi hawka kawsakuyqa sumaq sapichasqam kachkan kaykunapi: Lliw runakunaqa mamanchikpa wachakuwasqanchikmantapunim mana pipapas usuchisqan allin qawas",
    "Dikhindor so o prinzaripen e manuśenqe somandrune demnimnasqoro thaj e barabar aj bixasaraver hakaja savorre zenenqere and-i manuśikani famělia si i bàza e mestimnasqi, e ćaće krisaqi aj e aćhõmnasqi "
  ]

  def fixtures, do: @data

  @support_data [
    %{
      "iso6393" => "cmn",
      "name" => "Mandarin Chinese",
      "script" => "Han",
      "speakers" => 885_000_000,
      "udhr" => "cmn_hans"
    },
    %{
      "iso6393" => "spa",
      "name" => "Spanish",
      "script" => "Latin",
      "speakers" => 332_000_000,
      "udhr" => "spa"
    },
    %{
      "iso6393" => "eng",
      "name" => "English",
      "script" => "Latin",
      "speakers" => 322_000_000,
      "udhr" => "eng"
    },
    %{
      "iso6393" => "rus",
      "name" => "Russian",
      "script" => "Cyrillic",
      "speakers" => 288_000_000,
      "udhr" => "rus"
    },
    %{
      "iso6393" => "arb",
      "name" => "Standard Arabic",
      "script" => "Arabic",
      "speakers" => 280_000_000,
      "udhr" => "arb"
    },
    %{
      "iso6393" => "ben",
      "name" => "Bengali",
      "script" => "Bengali",
      "speakers" => 196_000_000,
      "udhr" => "ben"
    },
    %{
      "iso6393" => "hin",
      "name" => "Hindi",
      "script" => "Devanagari",
      "speakers" => 182_000_000,
      "udhr" => "hin"
    },
    %{
      "iso6393" => "por",
      "name" => "Portuguese",
      "script" => "Latin",
      "speakers" => 182_000_000,
      "udhr" => "por_PT"
    },
    %{
      "iso6393" => "ind",
      "name" => "Indonesian",
      "script" => "Latin",
      "speakers" => 140_000_000,
      "udhr" => "ind"
    },
    %{
      "iso6393" => "jpn",
      "name" => "Japanese",
      "script" => "Hiragana, Katakana, and Han",
      "speakers" => 125_000_000,
      "udhr" => "jpn"
    },
    %{
      "iso6393" => "fra",
      "name" => "French",
      "script" => "Latin",
      "speakers" => 124_000_000,
      "udhr" => "fra"
    },
    %{
      "iso6393" => "deu",
      "name" => "German",
      "script" => "Latin",
      "speakers" => 121_000_000,
      "udhr" => "deu_1996"
    },
    %{
      "iso6393" => "jav",
      "name" => "Javanese",
      "script" => "Latin",
      "speakers" => 75_500_800,
      "udhr" => "jav"
    },
    %{
      "iso6393" => "kor",
      "name" => "Korean",
      "script" => "Hangul",
      "speakers" => 75_000_000,
      "udhr" => "kor"
    },
    %{
      "iso6393" => "tel",
      "name" => "Telugu",
      "script" => "Telugu",
      "speakers" => 73_000_000,
      "udhr" => "tel"
    },
    %{
      "iso6393" => "vie",
      "name" => "Vietnamese",
      "script" => "Latin",
      "speakers" => 66_897_000,
      "udhr" => "vie"
    },
    %{
      "iso6393" => "mar",
      "name" => "Marathi",
      "script" => "Devanagari",
      "speakers" => 64_783_000,
      "udhr" => "mar"
    },
    %{
      "iso6393" => "ita",
      "name" => "Italian",
      "script" => "Latin",
      "speakers" => 63_000_000,
      "udhr" => "ita"
    },
    %{
      "iso6393" => "tam",
      "name" => "Tamil",
      "script" => "Tamil",
      "speakers" => 62_000_000,
      "udhr" => "tam"
    },
    %{
      "iso6393" => "tur",
      "name" => "Turkish",
      "script" => "Latin",
      "speakers" => 59_000_000,
      "udhr" => "tur"
    },
    %{
      "iso6393" => "urd",
      "name" => "Urdu",
      "script" => "Arabic",
      "speakers" => 54_000_000,
      "udhr" => "urd"
    },
    %{
      "iso6393" => "guj",
      "name" => "Gujarati",
      "script" => "Gujarati",
      "speakers" => 44_000_000,
      "udhr" => "guj"
    },
    %{
      "iso6393" => "pol",
      "name" => "Polish",
      "script" => "Latin",
      "speakers" => 44_000_000,
      "udhr" => "pol"
    },
    %{
      "iso6393" => "ukr",
      "name" => "Ukrainian",
      "script" => "Cyrillic",
      "speakers" => 41_000_000,
      "udhr" => "ukr"
    },
    %{
      "iso6393" => "mai",
      "name" => "Maithili",
      "script" => "Devanagari",
      "speakers" => 34_700_000,
      "udhr" => "mai"
    },
    %{
      "iso6393" => "mal",
      "name" => "Malayalam",
      "script" => "Malayalam",
      "speakers" => 34_014_000,
      "udhr" => "mal"
    },
    %{
      "iso6393" => "kan",
      "name" => "Kannada",
      "script" => "Kannada",
      "speakers" => 33_663_000,
      "udhr" => "kan"
    },
    %{
      "iso6393" => "mya",
      "name" => "Burmese",
      "script" => "Myanmar",
      "speakers" => 31_000_000,
      "udhr" => "mya"
    },
    %{
      "iso6393" => "ori",
      "name" => "Oriya (macrolanguage)",
      "script" => "Oriya",
      "speakers" => 31_000_000,
      "udhr" => "ori"
    },
    %{
      "iso6393" => "gax",
      "name" => "Borana-Arsi-Guji Oromo",
      "script" => "Latin",
      "speakers" => 30_000_000,
      "udhr" => "gax"
    },
    %{
      "iso6393" => "swh",
      "name" => "Swahili (individual language)",
      "script" => "Latin",
      "speakers" => 30_000_000,
      "udhr" => "swh"
    },
    %{
      "iso6393" => "sun",
      "name" => "Sundanese",
      "script" => "Latin",
      "speakers" => 27_000_000,
      "udhr" => "sun"
    },
    %{
      "iso6393" => "ron",
      "name" => "Romanian",
      "script" => "Latin",
      "speakers" => 26_000_000,
      "udhr" => "ron_2006"
    },
    %{
      "iso6393" => "pan",
      "name" => "Panjabi",
      "script" => "Gurmukhi",
      "speakers" => 25_700_000,
      "udhr" => "pan"
    },
    %{
      "iso6393" => "bho",
      "name" => "Bhojpuri",
      "script" => "Devanagari",
      "speakers" => 25_000_000,
      "udhr" => "bho"
    },
    %{
      "iso6393" => "amh",
      "name" => "Amharic",
      "script" => "Ethiopic",
      "speakers" => 23_000_000,
      "udhr" => "amh"
    },
    %{
      "iso6393" => "hau",
      "name" => "Hausa",
      "script" => "Latin",
      "speakers" => 22_000_000,
      "udhr" => "hau_NG"
    },
    %{
      "iso6393" => "bos",
      "name" => "Bosnian",
      "script" => "Latin",
      "speakers" => 21_000_000,
      "udhr" => "bos_latn"
    },
    %{
      "iso6393" => "bos",
      "name" => "Bosnian",
      "script" => "Cyrillic",
      "speakers" => 21_000_000,
      "udhr" => "bos_cyrl"
    },
    %{
      "iso6393" => "hrv",
      "name" => "Croatian",
      "script" => "Latin",
      "speakers" => 21_000_000,
      "udhr" => "hrv"
    },
    %{
      "iso6393" => "nld",
      "name" => "Dutch",
      "script" => "Latin",
      "speakers" => 21_000_000,
      "udhr" => "nld"
    },
    %{
      "iso6393" => "srp",
      "name" => "Serbian",
      "script" => "Latin",
      "speakers" => 21_000_000,
      "udhr" => "srp_latn"
    },
    %{
      "iso6393" => "srp",
      "name" => "Serbian",
      "script" => "Cyrillic",
      "speakers" => 21_000_000,
      "udhr" => "srp_cyrl"
    },
    %{
      "iso6393" => "tha",
      "name" => "Thai",
      "script" => "Thai",
      "speakers" => 21_000_000,
      "udhr" => "tha"
    },
    %{
      "iso6393" => "ckb",
      "name" => "Central Kurdish",
      "script" => "Latin",
      "speakers" => 20_000_000,
      "udhr" => "ckb"
    },
    %{
      "iso6393" => "yor",
      "name" => "Yoruba",
      "script" => "Latin",
      "speakers" => 20_000_000,
      "udhr" => "yor"
    },
    %{
      "iso6393" => "uzn",
      "name" => "Northern Uzbek",
      "script" => "Latin",
      "speakers" => 18_386_000,
      "udhr" => "uzn_latn"
    },
    %{
      "iso6393" => "uzn",
      "name" => "Northern Uzbek",
      "script" => "Cyrillic",
      "speakers" => 18_386_000,
      "udhr" => "uzn_cyrl"
    },
    %{
      "iso6393" => "ibo",
      "name" => "Igbo",
      "script" => "Latin",
      "speakers" => 17_000_000,
      "udhr" => "ibo"
    },
    %{
      "iso6393" => "nep",
      "name" => "Nepali (macrolanguage)",
      "script" => "Devanagari",
      "speakers" => 16_200_000,
      "udhr" => "nep"
    },
    %{
      "iso6393" => "ceb",
      "name" => "Cebuano",
      "script" => "Latin",
      "speakers" => 15_230_000,
      "udhr" => "ceb"
    },
    %{
      "iso6393" => "skr",
      "name" => "Seraiki",
      "script" => "Arabic",
      "speakers" => 15_020_000,
      "udhr" => "skr"
    },
    %{
      "iso6393" => "tgl",
      "name" => "Tagalog",
      "script" => "Latin",
      "speakers" => 14_850_000,
      "udhr" => "tgl"
    },
    %{
      "iso6393" => "hun",
      "name" => "Hungarian",
      "script" => "Latin",
      "speakers" => 14_500_000,
      "udhr" => "hun"
    },
    %{
      "iso6393" => "azj",
      "name" => "North Azerbaijani",
      "script" => "Cyrillic",
      "speakers" => 13_869_000,
      "udhr" => "azj_cyrl"
    },
    %{
      "iso6393" => "azj",
      "name" => "North Azerbaijani",
      "script" => "Latin",
      "speakers" => 13_869_000,
      "udhr" => "azj_latn"
    },
    %{
      "iso6393" => "sin",
      "name" => "Sinhala",
      "script" => "Sinhala",
      "speakers" => 13_218_000,
      "udhr" => "sin"
    },
    %{
      "iso6393" => "koi",
      "name" => "Komi-Permyak",
      "script" => "Cyrillic",
      "speakers" => 12_500_000,
      "udhr" => "koi"
    },
    %{
      "iso6393" => "ell",
      "name" => "Modern Greek (1453-)",
      "script" => "Greek",
      "speakers" => 12_258_540,
      "udhr" => "ell_monotonic"
    },
    %{
      "iso6393" => "ces",
      "name" => "Czech",
      "script" => "Latin",
      "speakers" => 12_000_000,
      "udhr" => "ces"
    },
    %{
      "iso6393" => "mag",
      "name" => "Magahi",
      "script" => "Devanagari",
      "speakers" => 10_821_000,
      "udhr" => "mag"
    },
    %{
      "iso6393" => "bel",
      "name" => "Belarusian",
      "script" => "Cyrillic",
      "speakers" => 10_200_000,
      "udhr" => "bel"
    },
    %{
      "iso6393" => "plt",
      "name" => "Plateau Malagasy",
      "script" => "Latin",
      "speakers" => 10_156_900,
      "udhr" => "plt"
    },
    %{
      "iso6393" => "mad",
      "name" => "Madurese",
      "script" => "Latin",
      "speakers" => 10_000_000,
      "udhr" => "mad"
    },
    %{
      "iso6393" => "nya",
      "name" => "Nyanja",
      "script" => "Latin",
      "speakers" => 10_000_000,
      "udhr" => "nya_chinyanja"
    },
    %{
      "iso6393" => "qug",
      "name" => "Chimborazo Highland Quichua",
      "script" => "Latin",
      "speakers" => 10_000_000,
      "udhr" => "qug"
    },
    %{
      "iso6393" => "kin",
      "name" => "Kinyarwanda",
      "script" => "Latin",
      "speakers" => 9_306_800,
      "udhr" => "kin"
    },
    %{
      "iso6393" => "zul",
      "name" => "Zulu",
      "script" => "Latin",
      "speakers" => 9_140_000,
      "udhr" => "zul"
    },
    %{
      "iso6393" => "bul",
      "name" => "Bulgarian",
      "script" => "Cyrillic",
      "speakers" => 9_000_000,
      "udhr" => "bul"
    },
    %{
      "iso6393" => "swe",
      "name" => "Swedish",
      "script" => "Latin",
      "speakers" => 9_000_000,
      "udhr" => "swe"
    },
    %{
      "iso6393" => "lin",
      "name" => "Lingala",
      "script" => "Latin",
      "speakers" => 8_400_000,
      "udhr" => "lin"
    },
    %{
      "iso6393" => "som",
      "name" => "Somali",
      "script" => "Latin",
      "speakers" => 8_335_000,
      "udhr" => "som"
    },
    %{
      "iso6393" => "hms",
      "name" => "Southern Qiandong Miao",
      "script" => "Latin",
      "speakers" => 8_200_000,
      "udhr" => "hms"
    },
    %{
      "iso6393" => "ilo",
      "name" => "Iloko",
      "script" => "Latin",
      "speakers" => 8_000_000,
      "udhr" => "ilo"
    },
    %{
      "iso6393" => "kaz",
      "name" => "Kazakh",
      "script" => "Cyrillic",
      "speakers" => 8_000_000,
      "udhr" => "kaz"
    },
    %{
      "iso6393" => "uig",
      "name" => "Uighur",
      "script" => "Latin",
      "speakers" => 7_464_000,
      "udhr" => "uig_latn"
    },
    %{
      "iso6393" => "uig",
      "name" => "Uighur",
      "script" => "Arabic",
      "speakers" => 7_464_000,
      "udhr" => "uig_arab"
    },
    %{
      "iso6393" => "hat",
      "name" => "Haitian",
      "script" => "Latin",
      "speakers" => 7_382_000,
      "udhr" => "hat_popular"
    },
    %{
      "iso6393" => "khm",
      "name" => "Central Khmer",
      "script" => "Khmer",
      "speakers" => 7_063_200,
      "udhr" => "khm"
    },
    %{
      "iso6393" => "aka",
      "name" => "Akan",
      "script" => "Latin",
      "speakers" => 7_000_000,
      "udhr" => "aka_asante"
    },
    %{
      "iso6393" => "aka",
      "name" => "Akan",
      "script" => "Latin",
      "speakers" => 7_000_000,
      "udhr" => "aka_fante"
    },
    %{
      "iso6393" => "hil",
      "name" => "Hiligaynon",
      "script" => "Latin",
      "speakers" => 7_000_000,
      "udhr" => "hil"
    },
    %{
      "iso6393" => "pes",
      "name" => "Iranian Persian",
      "script" => "Arabic",
      "speakers" => 7_000_000,
      "udhr" => "pes_1"
    },
    %{
      "iso6393" => "sna",
      "name" => "Shona",
      "script" => "Latin",
      "speakers" => 7_000_000,
      "udhr" => "sna"
    },
    %{
      "iso6393" => "tat",
      "name" => "Tatar",
      "script" => "Cyrillic",
      "speakers" => 7_000_000,
      "udhr" => "tat"
    },
    %{
      "iso6393" => "xho",
      "name" => "Xhosa",
      "script" => "Latin",
      "speakers" => 6_858_000,
      "udhr" => "xho"
    },
    %{
      "iso6393" => "hye",
      "name" => "Armenian",
      "script" => "Armenian",
      "speakers" => 6_836_000,
      "udhr" => "hye"
    },
    %{
      "iso6393" => "min",
      "name" => "Minangkabau",
      "script" => "Latin",
      "speakers" => 6_500_000,
      "udhr" => "min"
    },
    %{
      "iso6393" => "afr",
      "name" => "Afrikaans",
      "script" => "Latin",
      "speakers" => 6_365_000,
      "udhr" => "afr"
    },
    %{
      "iso6393" => "lua",
      "name" => "Luba-Lulua",
      "script" => "Latin",
      "speakers" => 6_300_000,
      "udhr" => "lua"
    },
    %{
      "iso6393" => "sat",
      "name" => "Santali",
      "script" => "Ol_Chiki",
      "speakers" => 6_218_900,
      "udhr" => "sat"
    },
    %{
      "iso6393" => "bod",
      "name" => "Tibetan",
      "script" => "Tibetan",
      "speakers" => 6_150_000,
      "udhr" => "bod"
    },
    %{
      "iso6393" => "tir",
      "name" => "Tigrinya",
      "script" => "Ethiopic",
      "speakers" => 6_060_000,
      "udhr" => "tir"
    },
    %{
      "iso6393" => "fin",
      "name" => "Finnish",
      "script" => "Latin",
      "speakers" => 6_000_000,
      "udhr" => "fin"
    },
    %{
      "iso6393" => "run",
      "name" => "Rundi",
      "script" => "Latin",
      "speakers" => 6_000_000,
      "udhr" => "run"
    },
    %{
      "iso6393" => "slk",
      "name" => "Slovak",
      "script" => "Latin",
      "speakers" => 5_606_000,
      "udhr" => "slk"
    },
    %{
      "iso6393" => "tuk",
      "name" => "Turkmen",
      "script" => "Latin",
      "speakers" => 5_397_500,
      "udhr" => "tuk_latn"
    },
    %{
      "iso6393" => "tuk",
      "name" => "Turkmen",
      "script" => "Cyrillic",
      "speakers" => 5_397_500,
      "udhr" => "tuk_cyrl"
    },
    %{
      "iso6393" => "dan",
      "name" => "Danish",
      "script" => "Latin",
      "speakers" => 5_292_000,
      "udhr" => "dan"
    },
    %{
      "iso6393" => "als",
      "name" => "Tosk Albanian",
      "script" => "Latin",
      "speakers" => 5_000_000,
      "udhr" => "als"
    },
    %{
      "iso6393" => "nob",
      "name" => "Norwegian Bokmål",
      "script" => "Latin",
      "speakers" => 5_000_000,
      "udhr" => "nob"
    },
    %{
      "iso6393" => "suk",
      "name" => "Sukuma",
      "script" => "Latin",
      "speakers" => 5_000_000,
      "udhr" => "suk"
    },
    %{
      "iso6393" => "sag",
      "name" => "Sango",
      "script" => "Latin",
      "speakers" => 4_900_000,
      "udhr" => "sag"
    },
    %{
      "iso6393" => "nno",
      "name" => "Norwegian Nynorsk",
      "script" => "Latin",
      "speakers" => 4_700_000,
      "udhr" => "nno"
    },
    %{
      "iso6393" => "heb",
      "name" => "Hebrew",
      "script" => "Hebrew",
      "speakers" => 4_612_000,
      "udhr" => "heb"
    },
    %{
      "iso6393" => "mos",
      "name" => "Mossi",
      "script" => "Latin",
      "speakers" => 4_600_000,
      "udhr" => "mos"
    },
    %{
      "iso6393" => "tgk",
      "name" => "Tajik",
      "script" => "Cyrillic",
      "speakers" => 4_380_000,
      "udhr" => "tgk"
    },
    %{
      "iso6393" => "cat",
      "name" => "Catalan",
      "script" => "Latin",
      "speakers" => 4_353_000,
      "udhr" => "cat"
    },
    %{
      "iso6393" => "sot",
      "name" => "Southern Sotho",
      "script" => "Latin",
      "speakers" => 4_197_000,
      "udhr" => "sot"
    },
    %{
      "iso6393" => "kat",
      "name" => "Georgian",
      "script" => "Georgian",
      "speakers" => 4_103_000,
      "udhr" => "kat"
    },
    %{
      "iso6393" => "bcl",
      "name" => "Central Bikol",
      "script" => "Latin",
      "speakers" => 4_000_000,
      "udhr" => "bcl"
    },
    %{
      "iso6393" => "glg",
      "name" => "Galician",
      "script" => "Latin",
      "speakers" => 4_000_000,
      "udhr" => "glg"
    },
    %{
      "iso6393" => "lao",
      "name" => "Lao",
      "script" => "Lao",
      "speakers" => 4_000_000,
      "udhr" => "lao"
    },
    %{
      "iso6393" => "lit",
      "name" => "Lithuanian",
      "script" => "Latin",
      "speakers" => 4_000_000,
      "udhr" => "lit"
    },
    %{
      "iso6393" => "umb",
      "name" => "Umbundu",
      "script" => "Latin",
      "speakers" => 4_000_000,
      "udhr" => "umb"
    },
    %{
      "iso6393" => "tsn",
      "name" => "Tswana",
      "script" => "Latin",
      "speakers" => 3_932_000,
      "udhr" => "tsn"
    },
    %{
      "iso6393" => "nso",
      "name" => "Pedi",
      "script" => "Latin",
      "speakers" => 3_851_000,
      "udhr" => "nso"
    },
    %{
      "iso6393" => "ban",
      "name" => "Balinese",
      "script" => "Latin",
      "speakers" => 3_800_000,
      "udhr" => "ban"
    },
    %{
      "iso6393" => "bug",
      "name" => "Buginese",
      "script" => "Latin",
      "speakers" => 3_500_000,
      "udhr" => "bug"
    },
    %{
      "iso6393" => "knc",
      "name" => "Central Kanuri",
      "script" => "Latin",
      "speakers" => 3_500_000,
      "udhr" => "knc"
    },
    %{
      "iso6393" => "ibb",
      "name" => "Ibibio",
      "script" => "Latin",
      "speakers" => 3_186_000,
      "udhr" => "ibb"
    },
    %{
      "iso6393" => "lug",
      "name" => "Ganda",
      "script" => "Latin",
      "speakers" => 3_015_980,
      "udhr" => "lug"
    },
    %{
      "iso6393" => "ace",
      "name" => "Achinese",
      "script" => "Latin",
      "speakers" => 3_000_000,
      "udhr" => "ace"
    },
    %{
      "iso6393" => "bam",
      "name" => "Bambara",
      "script" => "Latin",
      "speakers" => 3_000_000,
      "udhr" => "bam"
    },
    %{
      "iso6393" => "kmb",
      "name" => "Kimbundu",
      "script" => "Latin",
      "speakers" => 3_000_000,
      "udhr" => "kmb"
    },
    %{
      "iso6393" => "lun",
      "name" => "Lunda",
      "script" => "Latin",
      "speakers" => 3_000_000,
      "udhr" => "lun"
    },
    %{
      "iso6393" => "tzm",
      "name" => "Central Atlas Tamazight",
      "script" => "Latin",
      "speakers" => 3_000_000,
      "udhr" => "tzm"
    },
    %{
      "iso6393" => "war",
      "name" => "Waray (Philippines)",
      "script" => "Latin",
      "speakers" => 3_000_000,
      "udhr" => "war"
    },
    %{
      "iso6393" => "ydd",
      "name" => "Eastern Yiddish",
      "script" => "Hebrew",
      "speakers" => 3_000_000,
      "udhr" => "ydd"
    },
    %{
      "iso6393" => "dyu",
      "name" => "Dyula",
      "script" => "Latin",
      "speakers" => 2_700_000,
      "udhr" => "dyu"
    },
    %{
      "iso6393" => "wol",
      "name" => "Wolof",
      "script" => "Latin",
      "speakers" => 2_700_000,
      "udhr" => "wol"
    },
    %{
      "iso6393" => "kir",
      "name" => "Kirghiz",
      "script" => "Cyrillic",
      "speakers" => 2_631_420,
      "udhr" => "kir"
    },
    %{
      "iso6393" => "nds",
      "name" => "Low German",
      "script" => "Latin",
      "speakers" => 2_600_000,
      "udhr" => "nds"
    },
    %{
      "iso6393" => "mkd",
      "name" => "Macedonian",
      "script" => "Cyrillic",
      "speakers" => 2_500_000,
      "udhr" => "mkd"
    },
    %{
      "iso6393" => "vmw",
      "name" => "Makhuwa",
      "script" => "Latin",
      "speakers" => 2_500_000,
      "udhr" => "vmw"
    },
    %{
      "iso6393" => "ewe",
      "name" => "Ewe",
      "script" => "Latin",
      "speakers" => 2_477_600,
      "udhr" => "ewe"
    },
    %{
      "iso6393" => "khk",
      "name" => "Halh Mongolian",
      "script" => "Cyrillic",
      "speakers" => 2_330_000,
      "udhr" => "khk"
    },
    %{
      "iso6393" => "slv",
      "name" => "Slovenian",
      "script" => "Latin",
      "speakers" => 2_218_000,
      "udhr" => "slv"
    },
    %{
      "iso6393" => "ayr",
      "name" => "Central Aymara",
      "script" => "Latin",
      "speakers" => 2_200_000,
      "udhr" => "ayr"
    },
    %{
      "iso6393" => "bem",
      "name" => "Bemba (Zambia)",
      "script" => "Latin",
      "speakers" => 2_150_000,
      "udhr" => "bem"
    },
    %{
      "iso6393" => "emk",
      "name" => "Eastern Maninkakan",
      "script" => "Latin",
      "speakers" => 2_140_300,
      "udhr" => "emk"
    },
    %{
      "iso6393" => "bci",
      "name" => "Baoulé",
      "script" => "Latin",
      "speakers" => 2_130_000,
      "udhr" => "bci"
    },
    %{
      "iso6393" => "epo",
      "name" => "Esperanto",
      "script" => "Latin",
      "speakers" => 2_000_000,
      "udhr" => "epo"
    },
    %{
      "iso6393" => "pam",
      "name" => "Pampanga",
      "script" => "Latin",
      "speakers" => 2_000_000,
      "udhr" => "pam"
    },
    %{
      "iso6393" => "tpi",
      "name" => "Tok Pisin",
      "script" => "Latin",
      "speakers" => 2_000_000,
      "udhr" => "tpi"
    },
    %{
      "iso6393" => "tiv",
      "name" => "Tiv",
      "script" => "Latin",
      "speakers" => 2_000_000,
      "udhr" => "tiv"
    },
    %{
      "iso6393" => "ssw",
      "name" => "Swati",
      "script" => "Latin",
      "speakers" => 1_670_000,
      "udhr" => "ssw"
    },
    %{
      "iso6393" => "nyn",
      "name" => "Nyankole",
      "script" => "Latin",
      "speakers" => 1_643_193,
      "udhr" => "nyn"
    },
    %{
      "iso6393" => "iii",
      "name" => "Sichuan Yi",
      "script" => "Yi",
      "speakers" => 1_600_000,
      "udhr" => "iii"
    },
    %{
      "iso6393" => "yao",
      "name" => "Yao",
      "script" => "Latin",
      "speakers" => 1_597_000,
      "udhr" => "yao"
    },
    %{
      "iso6393" => "lav",
      "name" => "Latvian",
      "script" => "Latin",
      "speakers" => 1_550_000,
      "udhr" => "lav"
    },
    %{
      "iso6393" => "quz",
      "name" => "Cusco Quechua",
      "script" => "Latin",
      "speakers" => 1_500_000,
      "udhr" => "quz"
    },
    %{
      "iso6393" => "rmy",
      "name" => "Vlax Romani",
      "script" => "Latin",
      "speakers" => 1_500_000,
      "udhr" => "rmy"
    },
    %{
      "iso6393" => "src",
      "name" => "Logudorese Sardinian",
      "script" => "Latin",
      "speakers" => 1_500_000,
      "udhr" => "src"
    },
    %{
      "iso6393" => "sco",
      "name" => "Scots",
      "script" => "Latin",
      "speakers" => 1_500_000,
      "udhr" => "sco"
    },
    %{
      "iso6393" => "tso",
      "name" => "Tsonga",
      "script" => "Latin",
      "speakers" => 1_500_000,
      "udhr" => "tso_MZ"
    },
    %{
      "iso6393" => "men",
      "name" => "Mende (Sierra Leone)",
      "script" => "Latin",
      "speakers" => 1_480_000,
      "udhr" => "men"
    },
    %{
      "iso6393" => "fon",
      "name" => "Fon",
      "script" => "Latin",
      "speakers" => 1_436_000,
      "udhr" => "fon"
    },
    %{
      "iso6393" => "nhn",
      "name" => "Central Nahuatl",
      "script" => "Latin",
      "speakers" => 1_376_898,
      "udhr" => "nhn"
    },
    %{
      "iso6393" => "dip",
      "name" => "Northeastern Dinka",
      "script" => "Latin",
      "speakers" => 1_350_000,
      "udhr" => "dip"
    },
    %{
      "iso6393" => "kde",
      "name" => "Makonde",
      "script" => "Latin",
      "speakers" => 1_260_000,
      "udhr" => "kde"
    },
    %{
      "iso6393" => "snn",
      "name" => "Siona",
      "script" => "Latin",
      "speakers" => 1_240_000,
      "udhr" => "snn"
    },
    %{
      "iso6393" => "kbp",
      "name" => "Kabiyè",
      "script" => "Latin",
      "speakers" => 1_200_000,
      "udhr" => "kbp"
    },
    %{
      "iso6393" => "tem",
      "name" => "Timne",
      "script" => "Latin",
      "speakers" => 1_200_000,
      "udhr" => "tem"
    },
    %{
      "iso6393" => "toi",
      "name" => "Tonga (Zambia)",
      "script" => "Latin",
      "speakers" => 1_105_000,
      "udhr" => "toi"
    },
    %{
      "iso6393" => "est",
      "name" => "Estonian",
      "script" => "Latin",
      "speakers" => 1_100_000,
      "udhr" => "est"
    },
    %{
      "iso6393" => "snk",
      "name" => "Soninke",
      "script" => "Latin",
      "speakers" => 1_067_000,
      "udhr" => "snk"
    },
    %{
      "iso6393" => "cjk",
      "name" => "Chokwe",
      "script" => "Latin",
      "speakers" => 1_004_000,
      "udhr" => "cjk"
    },
    %{
      "iso6393" => "ada",
      "name" => "Adangme",
      "script" => "Latin",
      "speakers" => 1_000_000,
      "udhr" => "ada"
    },
    %{
      "iso6393" => "aii",
      "name" => "Assyrian Neo-Aramaic",
      "script" => "Syriac",
      "speakers" => 1_000_000,
      "udhr" => "aii"
    },
    %{
      "iso6393" => "bin",
      "name" => "Bini",
      "script" => "Latin",
      "speakers" => 1_000_000,
      "udhr" => "bin"
    },
    %{
      "iso6393" => "gaa",
      "name" => "Ga",
      "script" => "Latin",
      "speakers" => 1_000_000,
      "udhr" => "gaa"
    },
    %{
      "iso6393" => "kng",
      "name" => "Koongo",
      "script" => "Latin",
      "speakers" => 1_000_000,
      "udhr" => "kng"
    },
    %{
      "iso6393" => "ndo",
      "name" => "Ndonga",
      "script" => "Latin",
      "speakers" => 1_000_000,
      "udhr" => "ndo"
    },
    %{
      "iso6393" => "quy",
      "name" => "Ayacucho Quechua",
      "script" => "Latin",
      "speakers" => 1_000_000,
      "udhr" => "quy"
    },
    %{
      "iso6393" => "rmn",
      "name" => "Balkan Romani",
      "script" => "Latin",
      "speakers" => 1_000_000,
      "udhr" => "rmn"
    }
  ]

  def support, do: @support_data
end
