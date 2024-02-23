import 'package:equatable/equatable.dart';

final class Language extends Equatable {
  const Language(this.isoCode, this.name, this.nativeName);

  final String name;
  final String isoCode;
  final String nativeName;

  @override
  List<Object> get props => [isoCode, name, nativeName];
}

class Languages {
  static Language get abkhazian => const Language('ab', 'Abkhazian', 'Aҧсуа');
  static Language get afar => const Language('aa', 'Afar', 'Afaraf');
  static Language get afrikaans => const Language('af', 'Afrikaans', 'Afrikaans');
  static Language get akan => const Language('ak', 'Akan', 'Akan');
  static Language get albanian => const Language('sq', 'Albanian', 'Shqip');
  static Language get amharic => const Language('am', 'Amharic', 'አማርኛ');
  static Language get arabic => const Language('ar', 'Arabic', 'العربية');
  static Language get aragonese => const Language('an', 'Aragonese', 'Aragonés');
  static Language get armenian => const Language('hy', 'Armenian', 'Հայերեն');
  static Language get assamese => const Language('as', 'Assamese', 'অসমীয়া');
  static Language get avaric => const Language('av', 'Avaric', 'Aвар мацӀ, магӀарул мацӀ');
  static Language get avestan => const Language('ae', 'Avestan', 'Avesta');
  static Language get aymara => const Language('ay', 'Aymara', 'Aymar aru');
  static Language get azerbaijani => const Language('az', 'Azerbaijani', 'Azərbaycan dili');
  static Language get bambara => const Language('bm', 'Bambara', 'Bamanankan');
  static Language get bashkir => const Language('ba', 'Bashkir', 'башҡорт теле');
  static Language get basque => const Language('eu', 'Basque', 'Euskara, euskera');
  static Language get belarusian => const Language('be', 'Belarusian', 'Беларуская');
  static Language get bengali => const Language('bn', 'Bengali', 'বাংলা');
  static Language get bihariLanguages => const Language('bh', 'Bihari Languages', 'भोजपुरी');
  static Language get bislama => const Language('bi', 'Bislama', 'Bislama');
  static Language get bosnian => const Language('bs', 'Bosnian', 'Bosanski jezik');
  static Language get breton => const Language('br', 'Breton', 'Brezhoneg');
  static Language get bulgarian => const Language('bg', 'Bulgarian', 'български език');
  static Language get burmese => const Language('my', 'Burmese', 'ဗမာစာ');
  static Language get catalan => const Language('ca', 'Catalan', 'Català');
  static Language get centralKhmer => const Language('km', 'Central Khmer', 'ភាសាខ្មែរ');
  static Language get chamorro => const Language('ch', 'Chamorro', 'Chamoru');
  static Language get chechen => const Language('ce', 'Chechen', 'нохчийн мотт');
  static Language get chewaNyanja => const Language('ny', 'Chewa (Nyanja)', 'chiCheŵa, chinyanja');
  static Language get chinese => const Language('zh', 'Chinese', '中文 (Zhōngwén), 汉语, 漢語');
  static Language get chineseSimplified =>
      const Language('zh_Hans', 'Chinese (Simplified)', '简体中文');
  static Language get chineseTraditional =>
      const Language('zh_Hant', 'Chinese (Traditional)', '中國傳統');
  static Language get churchSlavonic => const Language('cu', 'Church Slavonic', 'ѩзыкъ словѣньскъ');
  static Language get chuvash => const Language('cv', 'Chuvash', 'чӑваш чӗлхи');
  static Language get cornish => const Language('kw', 'Cornish', 'Kernewek');
  static Language get corsican => const Language('co', 'Corsican', 'Corsu, lingua corsa');
  static Language get cree => const Language('cr', 'Cree', 'ᓀᐦᐃᔭᐍᐏᐣ');
  static Language get croatian => const Language('hr', 'Croatian', 'Hrvatski');
  static Language get czech => const Language('cs', 'Czech', 'česky, čeština');
  static Language get danish => const Language('da', 'Danish', 'Dansk');
  static Language get dhivehi => const Language('dv', 'Dhivehi', 'ދިވެހި');
  static Language get dutch => const Language('nl', 'Dutch', 'Nederlands, Vlaams');
  static Language get dzongkha => const Language('dz', 'Dzongkha', 'རྫོང་ཁ');
  static Language get english => const Language('en', 'English', 'English');
  static Language get esperanto => const Language('eo', 'Esperanto', 'Esperanto');
  static Language get estonian => const Language('et', 'Estonian', 'Eesti, eesti keel');
  static Language get ewe => const Language('ee', 'Ewe', 'Eʋegbe');
  static Language get faroese => const Language('fo', 'Faroese', 'Føroyskt');
  static Language get fijian => const Language('fj', 'Fijian', 'Vosa Vakaviti');
  static Language get finnish => const Language('fi', 'Finnish', 'Suomi, suomen kieli');
  static Language get french => const Language('fr', 'French', 'Français, langue française');
  static Language get fulah => const Language('ff', 'Fulah', 'Fulfulde, Pulaar, Pular');
  static Language get gaelic => const Language('gd', 'Gaelic', 'Gàidhlig');
  static Language get galician => const Language('gl', 'Galician', 'Galego');
  static Language get ganda => const Language('lg', 'Ganda', 'Luganda');
  static Language get georgian => const Language('ka', 'Georgian', 'ქართული');
  static Language get german => const Language('de', 'German', 'Deutsch');
  static Language get greek => const Language('el', 'Greek', 'Ελληνικά');
  static Language get guarani => const Language('gn', 'Guarani', 'Avañeẽ');
  static Language get gujarati => const Language('gu', 'Gujarati', 'ગુજરાતી');
  static Language get haitian => const Language('ht', 'Haitian', 'Kreyòl ayisyen');
  static Language get hausa => const Language('ha', 'Hausa', 'Hausa, هَوُسَ"');
  static Language get hebrew => const Language('he', 'Hebrew', 'עברית');
  static Language get herero => const Language('hz', 'Herero', 'Otjiherero');
  static Language get hindi => const Language('hi', 'Hindi', 'हिन्दी, हिंदी');
  static Language get hiriMotu => const Language('ho', 'Hiri Motu', 'Hiri Motu');
  static Language get hungarian => const Language('hu', 'Hungarian', 'Magyar');
  static Language get icelandic => const Language('is', 'Icelandic', 'Íslenska');
  static Language get ido => const Language('io', 'Ido', 'Ido');
  static Language get igbo => const Language('ig', 'Igbo', 'Asụsụ Igbo');
  static Language get indonesian => const Language('id', 'Indonesian', 'Bahasa Indonesia');
  static Language get interlingua => const Language('ia', 'Interlingua', 'Interlingua');
  static Language get interlingue => const Language('ie', 'Interlingue', 'Interlingue');
  static Language get inuktitut => const Language('iu', 'Inuktitut', 'ᐃᓄᒃᑎᑐᑦ');
  static Language get inupiaq => const Language('ik', 'Inupiaq', 'Iñupiaq, Iñupiatun');
  static Language get irish => const Language('ga', 'Irish', 'Gaeilge');
  static Language get italian => const Language('it', 'Italian', 'Italiano');
  static Language get japanese => const Language('ja', 'Japanese', '日本語 (にほんご／にっぽんご)');
  static Language get javanese => const Language('jv', 'Javanese', 'Basa Jawa');
  static Language get kalaallisut =>
      const Language('kl', 'Kalaallisut', 'kalaallisut, kalaallit oqaasii');
  static Language get kannada => const Language('kn', 'Kannada', 'ಕನ್ನಡ');
  static Language get kanuri => const Language('kr', 'Kanuri', 'Kanuri');
  static Language get kashmiri => const Language('ks', 'Kashmiri', 'कश्मीरी, كشميري‎');
  static Language get kazakh => const Language('kk', 'Kazakh', 'Қазақ тілі');
  static Language get kikuyu => const Language('ki', 'Kikuyu', 'Gĩkũyũ');
  static Language get kinyarwanda => const Language('rw', 'Kinyarwanda', 'Ikinyarwanda');
  static Language get kirghiz => const Language('ky', 'Kirghiz', 'кыргыз тили');
  static Language get komi => const Language('kv', 'Komi', 'коми кыв');
  static Language get kongo => const Language('kg', 'Kongo', 'KiKongo');
  static Language get korean => const Language('ko', 'Korean', '한국어 (韓國語), 조선말 (朝鮮語)');
  static Language get kuanyama => const Language('kj', 'Kuanyama', 'Kuanyama');
  static Language get kurdish => const Language('ku', 'Kurdish', 'Kurdî, كوردی‎');
  static Language get lao => const Language('lo', 'Lao', 'ພາສາລາວ');
  static Language get latin => const Language('la', 'Latin', 'latine, Lingua latina');
  static Language get latvian => const Language('lv', 'Latvian', 'Latviešu valoda');
  static Language get limburgan => const Language('li', 'Limburgan', 'Limburgs');
  static Language get lingala => const Language('ln', 'Lingala', 'Lingála');
  static Language get lithuanian => const Language('lt', 'Lithuanian', 'lietuvių kalba');
  static Language get lubaKatanga => const Language('lu', 'Luba-Katanga', 'Luba-katanga');
  static Language get luxembourgish => const Language('lb', 'Luxembourgish', 'Lëtzebuergesch');
  static Language get macedonian => const Language('mk', 'Macedonian', '"македонски јазик');
  static Language get malagasy => const Language('mg', 'Malagasy', 'Malagasy fiteny');
  static Language get malay => const Language('ms', 'Malay', 'Bahasa Melayu, بهاس ملايو‎');
  static Language get malayalam => const Language('ml', 'Malayalam', 'മലയാളം');
  static Language get maltese => const Language('mt', 'Maltese', 'Malti');
  static Language get manx => const Language('gv', 'Manx', 'Gaelg, Gailck');
  static Language get maori => const Language('mi', 'Maori', 'Te reo Māori');
  static Language get marathi => const Language('mr', 'Marathi', 'मराठी');
  static Language get marshallese => const Language('mh', 'Marshallese', 'Kajin M̧ajeļ');
  static Language get mongolian => const Language('mn', 'Mongolian', 'монгол');
  static Language get nauru => const Language('na', 'Nauru', 'Ekakairũ Naoero');
  static Language get navajo => const Language('nv', 'Navajo', 'Diné bizaad, Dinékʼehǰí');
  static Language get ndebeleNorth => const Language('nd', 'Ndebele, North', 'IsiNdebele');
  static Language get ndebeleSouth => const Language('nr', 'Ndebele, South', 'IsiNdebele');
  static Language get ndonga => const Language('ng', 'Ndonga', 'Owambo');
  static Language get nepali => const Language('ne', 'Nepali', 'नेपाली');
  static Language get northernSami => const Language('se', 'Northern Sami', 'Davvisámegiella');
  static Language get norwegian => const Language('no', 'Norwegian', 'Norsk');
  static Language get norwegianNynorsk =>
      const Language('nn', 'Norwegian Nynorsk', 'Norsk nynorsk');
  static Language get occitan => const Language('oc', 'Occitan', 'Occitan');
  static Language get ojibwa => const Language('oj', 'Ojibwa', 'ᐊᓂᔑᓈᐯᒧᐎᓐ');
  static Language get oriya => const Language('or', 'Oriya', 'ଓଡ଼ିଆ');
  static Language get oromo => const Language('om', 'Oromo', 'Afaan Oromoo');
  static Language get ossetian => const Language('os', 'Ossetian', 'ирон æвзаг');
  static Language get pali => const Language('pi', 'Pali', 'पाऴि');
  static Language get panjabi => const Language('pa', 'Panjabi', 'ਪੰਜਾਬੀ, پنجابی‎');
  static Language get persian => const Language('fa', 'Persian', 'فارسی');
  static Language get polish => const Language('pl', 'Polish', 'Polski');
  static Language get portuguese => const Language('pt', 'Portuguese', 'Português');
  static Language get pushto => const Language('ps', 'Pushto', 'پښتو');
  static Language get quechua => const Language('qu', 'Quechua', 'Runa Simi, Kichwa');
  static Language get romanian => const Language('ro', 'Romanian', 'Română');
  static Language get romansh => const Language('rm', 'Romansh', 'Rumantsch grischun');
  static Language get rundi => const Language('rn', 'Rundi', 'KiRundi');
  static Language get russian => const Language('ru', 'Russian', 'русский язык');
  static Language get samoan => const Language('sm', 'Samoan', 'Gagana faa Samoa');
  static Language get sango => const Language('sg', 'Sango', 'Yângâ tî sängö');
  static Language get sanskrit => const Language('sa', 'Sanskrit', 'संस्कृतम्');
  static Language get sardinian => const Language('sc', 'Sardinian', 'sardu');
  static Language get serbian => const Language('sr', 'Serbian', 'Cрпски језик');
  static Language get shona => const Language('sn', 'Shona', 'ChiShona');
  static Language get sichuanYi => const Language('ii', 'Sichuan Yi', 'ꆈꌠꉙ');
  static Language get sindhi => const Language('sd', 'Sindhi', 'सिन्धी, سنڌي، سندھی‎');
  static Language get sinhala => const Language('si', 'Sinhala', 'සිංහල');
  static Language get slovak => const Language('sk', 'Slovak', 'Slovenčina');
  static Language get slovenian => const Language('sl', 'Slovenian', 'Slovenščina');
  static Language get somali => const Language('so', 'Somali', 'Soomaaliga, af Soomaali');
  static Language get sothoSouthern => const Language('st', 'Sotho, Southern', 'Sesotho');
  static Language get spanish => const Language('es', 'Spanish', 'Español, castellano');
  static Language get sundanese => const Language('su', 'Sundanese', 'Basa Sunda');
  static Language get swahili => const Language('sw', 'Swahili', 'Kiswahili');
  static Language get swati => const Language('ss', 'Swati', 'SiSwati');
  static Language get swedish => const Language('sv', 'Swedish', 'Svenska');
  static Language get tagalog => const Language('tl', 'Tagalog', 'Wikang Tagalog, ᜏᜒᜃᜅ᜔ ᜆᜄᜎᜓᜄ᜔');
  static Language get tahitian => const Language('ty', 'Tahitian', 'Reo Tahiti');
  static Language get tajik => const Language('tg', 'Tajik', 'тоҷикӣ, toğikī, تاجیکی‎');
  static Language get tamil => const Language('ta', 'Tamil', 'தமிழ்');
  static Language get tatar => const Language('tt', 'Tatar', 'татарча, tatarça, تاتارچا‎');
  static Language get telugu => const Language('te', 'Telugu', 'తెలుగు');
  static Language get thai => const Language('th', 'Thai', 'ไทย');
  static Language get tibetan => const Language('bo', 'Tibetan', 'བོད་ཡིག');
  static Language get tigrinya => const Language('ti', 'Tigrinya', 'ትግርኛ');
  static Language get tongaTongaIslands =>
      const Language('to', 'Tonga (Tonga Islands)', 'Faka Tonga');
  static Language get tsonga => const Language('ts', 'Tsonga', 'Xitsonga');
  static Language get tswana => const Language('tn', 'Tswana', 'Setswana');
  static Language get turkish => const Language('tr', 'Turkish', 'Türkçe');
  static Language get turkmen => const Language('tk', 'Turkmen', 'Türkmen, Түркмен');
  static Language get twi => const Language('tw', 'Twi', 'Twi');
  static Language get uighur => const Language('ug', 'Uighur', 'Uyƣurqə, ئۇيغۇرچە‎');
  static Language get ukrainian => const Language('uk', 'Ukrainian', 'українська');
  static Language get urdu => const Language('ur', 'Urdu', 'اردو');
  static Language get uzbek => const Language('uz', 'Uzbek', 'Zbek, Ўзбек, أۇزبېك‎');
  static Language get venda => const Language('ve', 'Venda', 'Tshivenḓa');
  static Language get vietnamese => const Language('vi', 'Vietnamese', 'Tiếng Việt');
  static Language get volapuk => const Language('vo', 'Volapük', 'Volapük');
  static Language get walloon => const Language('wa', 'Walloon', 'Walon');
  static Language get welsh => const Language('cy', 'Welsh', 'Cymraeg');
  static Language get westernFrisian => const Language('fy', 'Western Frisian', 'Frysk');
  static Language get wolof => const Language('wo', 'Wolof', 'Wollof');
  static Language get xhosa => const Language('xh', 'Xhosa', 'IsiXhosa');
  static Language get yiddish => const Language('yi', 'Yiddish', 'ייִדיש');
  static Language get yoruba => const Language('yo', 'Yoruba', 'Yorùbá');
  static Language get zhuang => const Language('za', 'Zhuang', 'Saɯ cueŋƅ, Saw cuengh');
  static Language get zulu => const Language('zu', 'Zulu', 'isiZulu');

  static Set<Language> defaultLanguages = {
    Languages.abkhazian,
    Languages.afar,
    Languages.afrikaans,
    Languages.akan,
    Languages.albanian,
    Languages.amharic,
    Languages.arabic,
    Languages.aragonese,
    Languages.armenian,
    Languages.assamese,
    Languages.avaric,
    Languages.avestan,
    Languages.aymara,
    Languages.azerbaijani,
    Languages.bambara,
    Languages.bashkir,
    Languages.basque,
    Languages.belarusian,
    Languages.bengali,
    Languages.bihariLanguages,
    Languages.bislama,
    Languages.bosnian,
    Languages.breton,
    Languages.bulgarian,
    Languages.burmese,
    Languages.catalan,
    Languages.centralKhmer,
    Languages.chamorro,
    Languages.chechen,
    Languages.chewaNyanja,
    Languages.chinese,
    Languages.chineseSimplified,
    Languages.chineseTraditional,
    Languages.churchSlavonic,
    Languages.chuvash,
    Languages.cornish,
    Languages.corsican,
    Languages.cree,
    Languages.croatian,
    Languages.czech,
    Languages.danish,
    Languages.dhivehi,
    Languages.dutch,
    Languages.dzongkha,
    Languages.english,
    Languages.esperanto,
    Languages.estonian,
    Languages.ewe,
    Languages.faroese,
    Languages.fijian,
    Languages.finnish,
    Languages.french,
    Languages.fulah,
    Languages.gaelic,
    Languages.galician,
    Languages.ganda,
    Languages.georgian,
    Languages.german,
    Languages.greek,
    Languages.guarani,
    Languages.gujarati,
    Languages.haitian,
    Languages.hausa,
    Languages.hebrew,
    Languages.herero,
    Languages.hindi,
    Languages.hiriMotu,
    Languages.hungarian,
    Languages.icelandic,
    Languages.ido,
    Languages.igbo,
    Languages.indonesian,
    Languages.interlingua,
    Languages.interlingue,
    Languages.inuktitut,
    Languages.inupiaq,
    Languages.irish,
    Languages.italian,
    Languages.japanese,
    Languages.javanese,
    Languages.kalaallisut,
    Languages.kannada,
    Languages.kanuri,
    Languages.kashmiri,
    Languages.kazakh,
    Languages.kikuyu,
    Languages.kinyarwanda,
    Languages.kirghiz,
    Languages.komi,
    Languages.kongo,
    Languages.korean,
    Languages.kuanyama,
    Languages.kurdish,
    Languages.lao,
    Languages.latin,
    Languages.latvian,
    Languages.limburgan,
    Languages.lingala,
    Languages.lithuanian,
    Languages.lubaKatanga,
    Languages.luxembourgish,
    Languages.macedonian,
    Languages.malagasy,
    Languages.malay,
    Languages.malayalam,
    Languages.maltese,
    Languages.manx,
    Languages.maori,
    Languages.marathi,
    Languages.marshallese,
    Languages.mongolian,
    Languages.nauru,
    Languages.navajo,
    Languages.ndebeleNorth,
    Languages.ndebeleSouth,
    Languages.ndonga,
    Languages.nepali,
    Languages.northernSami,
    Languages.norwegian,
    Languages.norwegianNynorsk,
    Languages.occitan,
    Languages.ojibwa,
    Languages.oriya,
    Languages.oromo,
    Languages.ossetian,
    Languages.pali,
    Languages.panjabi,
    Languages.persian,
    Languages.polish,
    Languages.portuguese,
    Languages.pushto,
    Languages.quechua,
    Languages.romanian,
    Languages.romansh,
    Languages.rundi,
    Languages.russian,
    Languages.samoan,
    Languages.sango,
    Languages.sanskrit,
    Languages.sardinian,
    Languages.serbian,
    Languages.shona,
    Languages.sichuanYi,
    Languages.sindhi,
    Languages.sinhala,
    Languages.slovak,
    Languages.slovenian,
    Languages.somali,
    Languages.sothoSouthern,
    Languages.spanish,
    Languages.sundanese,
    Languages.swahili,
    Languages.swati,
    Languages.swedish,
    Languages.tagalog,
    Languages.tahitian,
    Languages.tajik,
    Languages.tamil,
    Languages.tatar,
    Languages.telugu,
    Languages.thai,
    Languages.tibetan,
    Languages.tigrinya,
    Languages.tongaTongaIslands,
    Languages.tsonga,
    Languages.tswana,
    Languages.turkish,
    Languages.turkmen,
    Languages.twi,
    Languages.uighur,
    Languages.ukrainian,
    Languages.urdu,
    Languages.uzbek,
    Languages.venda,
    Languages.vietnamese,
    Languages.volapuk,
    Languages.walloon,
    Languages.welsh,
    Languages.westernFrisian,
    Languages.wolof,
    Languages.xhosa,
    Languages.yiddish,
    Languages.yoruba,
    Languages.zhuang,
    Languages.zulu
  };
}
