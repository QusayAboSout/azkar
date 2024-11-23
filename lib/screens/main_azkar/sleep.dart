import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/sleep_controller.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:quran/quran.dart';

class Sleep extends StatefulWidget {
  const Sleep({super.key});

  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  final PageController _pageController = PageController(initialPage: 0);
  final SleepController _sleepController = Get.put(SleepController());

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'sleep',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('أذكار النوم'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              /// UPPER PART
              GetBuilder(
                init: _sleepController,
                builder: (context) {
                  return const UpperPart();
                }
              ),
              /// Main Part
              Expanded(
                  child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Screen(1, _pageController, false, false, false, 0, 'تجمع كفيك وتنفث فيهما ثم تقرأ: \n القلاقل 3 مرات لكل سورة،\n\n ثم يمسح بكفيه ما استطاع من جسده، يبدأ من الرأس والوجه وما أقبل من جسده') ,
                  Screen(
                    2,
                    _pageController,
                    true,
                    false,
                    false,
                    3,
                    '${getVerse(112, 1)} ${getVerseEndSymbol(1)} ${getVerse(112, 2)} ${getVerseEndSymbol(2)} ${getVerse(112, 3)} ${getVerseEndSymbol(3)} ${getVerse(112, 4)} ${getVerseEndSymbol(4)}',
                  ),
                  Screen(
                    3,
                    _pageController,
                    true,
                    false,
                    false,
                    3,
                    '${getVerse(113, 1)} ${getVerseEndSymbol(1)} ${getVerse(113, 2)} ${getVerseEndSymbol(2)} ${getVerse(113, 3)} ${getVerseEndSymbol(3)} ${getVerse(113, 4)} ${getVerseEndSymbol(4)} ${getVerse(113, 5)} ${getVerseEndSymbol(5)}',
                  ),
                  Screen(
                    4,
                    _pageController,
                    true,
                    false,
                    false,
                    3,
                    '${getVerse(114, 1)} ${getVerseEndSymbol(1)} ${getVerse(114, 2)} ${getVerseEndSymbol(2)} ${getVerse(114, 3)} ${getVerseEndSymbol(3)} ${getVerse(114, 4)} ${getVerseEndSymbol(4)} ${getVerse(114, 5)} ${getVerseEndSymbol(5)} ${getVerse(114, 6)} ${getVerseEndSymbol(6)}',
                  ),
                  Screen(5, _pageController, false, false, false, 0, 'ثم يمسح بكفيه ما استطاع من جسده، يبدأ من الرأس والوجه وما أقبل من الجسم') ,
                  Screen(6, _pageController, false, true, false, 0,
                      getVerse(2, 255)),
                  Screen(7, _pageController, false, true, false, 0,
                      getVerse(2, 285) + getVerseEndSymbol(285)),
                  Screen(8, _pageController, false, false, false, 0,
                      getVerse(2, 286) + getVerseEndSymbol(286)),
                  Screen(9, _pageController, false, false, false, 0,
                      ' باسْمِكَ رَبِّ، وضَعْتُ جَنْبِي،\n وبِكَ أرْفَعُهُ،\n إنْ أمْسَكْتَ نَفْسِي فارْحَمْها،\n وإنْ أرْسَلْتَها فاحْفَظْها\n بما تَحْفَظُ به عِبادَكَ الصَّالِحِينَ'),
                  Screen(10, _pageController, false, false, false, 0,'اللهمَّ أنت خلقْتَ نفسي ، و أنت توفَّاها ، لك مماتها و محياها ، و إن أحيَيْتَها فاحفَظْها ، و إن أمَتَّها فاغفِرْ لها ، اللهم إني أسألُك العافيةَ'),
                  Screen(11, _pageController, false, false, true, 3,'اللهم قِنِي عذابَك يوم تبعثُ عبادَك'),
                  Screen(12, _pageController, false, false, false, 0,'اللهمَّ باسمِك أموتُ وأحيا'),
                  Screen(13, _pageController, false, false, true, 33,'سُبْحَانَ اللَّه'),
                  Screen(14, _pageController, false, false, true, 33,'الْحَمْدُ للّه'),
                  Screen(15, _pageController, false, false, true, 34,'اللّه اكبر'),
                  Screen(16, _pageController, false, false, false, 0,'اللَّهمَّ ربَّ السَّمواتِ السَّبعِ وربَّ العرشِ العظيمِ ربَّنا وربَّ كلِّ شيءٍ أنتَ الظَّاهرُ فليس فوقَكَ شيءٌ وأنتَ الباطنُ فليس دونَكَ شيءٌ مُنزِلَ التَّوراةِ والإنجيلِ والفُرقانِ فالقَ الحَبِّ والنَّوى أعوذُ بكَ مِن شرِّ كلِّ شيءٍ أنتَ آخِذٌ بناصيتِه'),
                  Screen(17, _pageController, false, false, false, 0,'اللهمّ أنتَ الأوّلُ الذي ليسَ قبلكَ شيء ، وأنتَ الآخرُ الذي ليسَ بعدكَ شيء ، وأنتَ الظاهرُ فليسَ فوقكَ شيء ، وأنت الباطنُ فليسَ دونكَ شيء اقْضِ عنّا الديْنَ وأغنِنا من الفقرِ'),
                  Screen(18, _pageController, false, false, false, 0,'الحمدُ للهِ الَّذي أطعَمنا وسقانا وكفانا فكم ممَّن لا كافيَ له ولا مُؤويَ'),
                  Screen(19, _pageController, false, false, false, 0,'اللَّهُمَّ عَالِمَ الغَيْبِ والشَّهَادَةِ، فَاطِرَ السَّموَاتِ والأرْضِ، رَبَّ كُلِّ شَيءٍ ومَلِيْكَهُ، أشْهَدُ أنْ لا إلَهَ إلاَّ أنْتَ، أعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وأنْ أقْتَرِفَ عَلَى نَفْسِي سُوءاً، أوْ أجُرَّهُ إلَى مُسْلِمٍ'),
                  Screen(20, _pageController, false, false, false, 0,'اللَّهُمَّ أسْلَمْتُ وجْهِي إلَيْكَ، وفَوَّضْتُ أمْرِي إلَيْكَ، وأَلْجَأْتُ ظَهْرِي إلَيْكَ، رَغْبَةً ورَهْبَةً إلَيْكَ، لا مَلْجَأَ ولَا مَنْجَا مِنْكَ إلَّا إلَيْكَ، اللَّهُمَّ آمَنْتُ بكِتَابِكَ الذي أنْزَلْتَ، وبِنَبِيِّكَ الذي أرْسَلْتَ'),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
