import 'package:azkar/controllers/pageview_controller.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:quran/quran.dart';

class MiniMasaController extends GetxController {
  final PageviewController pageviewController = Get.find<PageviewController>();

  MiniMasaController() {
    updateMaxAzkarNumber();
    pageviewController.zekrCount = 0;
  }

  void updateMaxAzkarNumber() {
    pageviewController.lastNumber = 17;
  }

  void updateZekrCount() {
    pageviewController.zekrCount++;
  }

  PageView Data(PageController pageController) {
    return PageView(
      controller: pageController,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Screen(1, pageController, false, true, false, 0, getVerse(2, 255)),
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
            'أَمْسَيْنَا وَأَمْسَى المُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ لا إلَهَ إلَّا اللَّهُ، وَحْدَهُ لا شَرِيكَ له، له المُلْكُ وَلَهُ الحَمْدُ وَهو علَى كُلِّ شيءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ ما في هذِه اللَّيْلَةِ وَخَيْرَ ما بَعْدَهَا، وَأَعُوذُ بكَ مِن شَرِّ ما في هذِه اللَّيْلَةِ وَشَرِّ ما بَعْدَهَا، رَبِّ أَعُوذُ بكَ مِنَ الكَسَلِ وَسُوءِ الكِبَرِ، رَبِّ أَعُوذُ بكَ مِن عَذَابٍ في النَّارِ وَعَذَابٍ في القَبْرِ'),
        Screen(6, pageController, false, false, false, 0,
            'اللهمَّ بك أَمسَيْنا، \nوبك أصبَحْنا\n وبك نحيا،\n وبك نموتُ،\n وإليك النُّشورُ'),
        Screen(7, pageController, false, false, false, 0,
            'اللَّهمَّ عافِني في بَدَني،\n اللَّهمَّ عافِني في سَمْعي،\n اللَّهمَّ عافِني في بَصَري،\n لا إلهَ إلَّا أنتَ.\n اللَّهمَّ إنِّي أَعوذُ بكَ منَ الكُفرِ والفَقرِ،\n اللَّهمَّ إنِّي أَعوذُ بِكَ مِن عَذابِ القَبرِ،\n لا إلهَ إلَّا أنتَ'),
        Screen(8, pageController, false, false, true, 3,
            'حَسْبِيَ اللَّهُ\n لا إِلَهَ إِلا هُوَ\n عَلَيْهِ تَوَكَّلْتُ\n وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ'),
        Screen(9, pageController, false, false, true, 3,
            'بسم الله\n الذي لا يضر\n مع اسمه شيء\n في الأرض\n ولا في السماء\n وهو السميع العليم'),
        Screen(10, pageController, false, false, false, 0,
            'يا حيّ يا قَيُّومُ برحمتك أستغيثُ،\n أصلحْ لي شأني كلَّه،\n وَلَا تَكِلْنِي إِلَى نفسي طَرْفَةَ عين \n أمسينا وأمسى الملك لله رب العالمين،\n االلهم إني أسألك خير مافي هذا الليلة : فتحها ، ونصرها ، ونورها ، وبركتها ، وهداها وأعوذ بك من شر مافيها وشر ما بعده'),
        Screen(11, pageController, false, false, false, 0,
            'أمسينا على فِطرةِ الإسلامِ،\n وكَلِمةِ الإخلاصِ،\n ودِينِ نَبيِّنا محمَّدٍ صلَّى اللهُ عليه وسلَّمَ\n وعلى مِلَّةِ أبِينا إبراهيمَ، حَنيفًا مُسلِمًا،\n وما كان مِنَ المُشرِكينَ'),
        Screen(
            12, pageController, false, false, true, 10, 'سبحان اللهِ وبحمدِه'),
        Screen(13, pageController, false, false, true, 3,
            'أعوذُ بكلماتِ الله التاماتِ من شرِّ ما خلقَ'),
        Screen(14, pageController, false, false, false, 0,
            'لا إلهَ إلاَّ اللَّه وحْدهُ لاَ شَرِيكَ لهُ،\n لَهُ المُلْكُ، ولَهُ الحمْدُ،\n وَهُو عَلَى كُلِّ شَيءٍ قَدِيرٌ'),
        Screen(15, pageController, false, false, true, 3,
            'سُبحانَ اللهِ وبحَمْدِه\n عَدَدَ خَلْقِه،\n ورِضا نَفْسِه،\n وزِنةَ عَرْشِه،\n ومِدادَ كَلِماتِه'),
        Screen(16, pageController, false, false, false, 0,
            'اللَّهُمَّ إنِّي أسأَلُك\n عِلْمًا نافعًا\n ورِزْقًا طيِّبًا\n وعَمَلًا مُتقبَّلًا'),
        Screen(17, pageController, false, false, false, 0,
            'اللهم صلِّ وسلِّم على نبينا محمد'),
      ],
    );
  }
}
