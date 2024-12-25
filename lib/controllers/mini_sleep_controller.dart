import 'package:azkar/controllers/pageview_controller.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quran/quran.dart';

class MiniSleepController extends GetxController {
  final PageviewController pageviewController = Get.find<PageviewController>();
  MiniSleepController() {
    updateMaxAzkarNumber();
    pageviewController.zekrCount = 0;
  }

  void updateMaxAzkarNumber() {
    pageviewController.lastNumber = 18;
  }

  void updateZekrCount() {
    pageviewController.zekrCount++;
  }

  PageView Data(PageController pageController) {
    return PageView(
      controller: pageController,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Screen(1, pageController, false, false, false, 0,
            'تجمع كفيك وتنفث فيهما ثم تقرأ: \n القلاقل 3 مرات لكل سورة،\n\n ثم يمسح بكفيه ما استطاع من جسده، يبدأ من الرأس والوجه وما أقبل من جسده'),
        Screen(
          2,
          pageController,
          true,
          false,
          false,
          3,
          '${getVerse(112, 1)} ${getVerseEndSymbol(1)} ${getVerse(112, 2)} ${getVerseEndSymbol(2)} ${getVerse(112, 3)} ${getVerseEndSymbol(3)} ${getVerse(112, 4)} ${getVerseEndSymbol(4)}',
        ),
        Screen(
          3,
          pageController,
          true,
          false,
          false,
          3,
          '${getVerse(113, 1)} ${getVerseEndSymbol(1)} ${getVerse(113, 2)} ${getVerseEndSymbol(2)} ${getVerse(113, 3)} ${getVerseEndSymbol(3)} ${getVerse(113, 4)} ${getVerseEndSymbol(4)} ${getVerse(113, 5)} ${getVerseEndSymbol(5)}',
        ),
        Screen(
          4,
          pageController,
          true,
          false,
          false,
          3,
          '${getVerse(114, 1)} ${getVerseEndSymbol(1)} ${getVerse(114, 2)} ${getVerseEndSymbol(2)} ${getVerse(114, 3)} ${getVerseEndSymbol(3)} ${getVerse(114, 4)} ${getVerseEndSymbol(4)} ${getVerse(114, 5)} ${getVerseEndSymbol(5)} ${getVerse(114, 6)} ${getVerseEndSymbol(6)}',
        ),
        Screen(5, pageController, false, false, false, 0,
            'ثم يمسح بكفيه ما استطاع من جسده، يبدأ من الرأس والوجه وما أقبل من الجسم'),
        Screen(6, pageController, false, true, false, 0, getVerse(2, 255)),
        Screen(7, pageController, false, true, false, 0,
            getVerse(2, 285) + getVerseEndSymbol(285)),
        Screen(8, pageController, false, false, false, 0,
            getVerse(2, 286) + getVerseEndSymbol(286)),
        Screen(9, pageController, false, false, false, 0,
            ' باسْمِكَ رَبِّ، وضَعْتُ جَنْبِي،\n وبِكَ أرْفَعُهُ،\n إنْ أمْسَكْتَ نَفْسِي فارْحَمْها،\n وإنْ أرْسَلْتَها فاحْفَظْها\n بما تَحْفَظُ به عِبادَكَ الصَّالِحِينَ'),
        Screen(10, pageController, false, false, false, 0,
            'اللهمَّ أنت خلقْتَ نفسي ، و أنت توفَّاها ، لك مماتها و محياها ، و إن أحيَيْتَها فاحفَظْها ، و إن أمَتَّها فاغفِرْ لها ، اللهم إني أسألُك العافيةَ'),
        Screen(11, pageController, false, false, true, 3,
            'اللهم قِنِي عذابَك يوم تبعثُ عبادَك'),
        Screen(12, pageController, false, false, false, 0,
            'اللهمَّ باسمِك أموتُ وأحيا'),
        Screen(13, pageController, false, false, false, 0, 'سُبْحَانَ اللَّه'),
        Screen(14, pageController, false, false, false, 0, 'الْحَمْدُ للّه'),
        Screen(15, pageController, false, false, false, 0, 'اللّه اكبر'),
        Screen(16, pageController, false, false, false, 0,
            'اللَّهمَّ ربَّ السَّمواتِ السَّبعِ وربَّ العرشِ العظيمِ ربَّنا وربَّ كلِّ شيءٍ أنتَ الظَّاهرُ فليس فوقَكَ شيءٌ وأنتَ الباطنُ فليس دونَكَ شيءٌ مُنزِلَ التَّوراةِ والإنجيلِ والفُرقانِ فالقَ الحَبِّ والنَّوى أعوذُ بكَ مِن شرِّ كلِّ شيءٍ أنتَ آخِذٌ بناصيتِه'),
        Screen(17, pageController, false, false, false, 0,
            'الحمدُ للهِ الَّذي أطعَمنا وسقانا وكفانا فكم ممَّن لا كافيَ له ولا مُؤويَ'),
        Screen(18, pageController, false, false, false, 0,
            'اللَّهُمَّ أسْلَمْتُ وجْهِي إلَيْكَ، وفَوَّضْتُ أمْرِي إلَيْكَ، وأَلْجَأْتُ ظَهْرِي إلَيْكَ، رَغْبَةً ورَهْبَةً إلَيْكَ، لا مَلْجَأَ ولَا مَنْجَا مِنْكَ إلَّا إلَيْكَ، اللَّهُمَّ آمَنْتُ بكِتَابِكَ الذي أنْزَلْتَ، وبِنَبِيِّكَ الذي أرْسَلْتَ'),
      ],
    );
  }
}
