import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/material.dart';
import 'package:quran/quran.dart';

class Sabah extends StatefulWidget {
  const Sabah({super.key});

  @override
  State<Sabah> createState() => _SabahState();
}

class _SabahState extends State<Sabah> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'sabah',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('أذكار الصباح'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              /// UPPER PART
              const UpperPart(),
      
              /// Main Part
      
              Expanded(
                  child: PageView(
                controller: _pageController,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Screen(1, _pageController, false, true,false,0, getVerse(2, 255)),
                  Screen(
                    2,
                    _pageController,
                    true,
                    false,
                    false,0,
                    getVerse(112, 1) +
                        getVerseEndSymbol(1) +
                        getVerse(112, 2) +
                        getVerseEndSymbol(2) +
                        getVerse(112, 3) +
                        getVerseEndSymbol(3) +
                        getVerse(112, 4) +
                        getVerseEndSymbol(4),
                  ),
                  Screen(
                    3,
                    _pageController,
                    true,
                    false,
                    false,0,
                    getVerse(113, 1) +
                        getVerseEndSymbol(1) +
                        getVerse(113, 2) +
                        getVerseEndSymbol(2) +
                        getVerse(113, 3) +
                        getVerseEndSymbol(3) +
                        getVerse(113, 4) +
                        getVerseEndSymbol(4)+
                        getVerse(113, 5) +
                        getVerseEndSymbol(5),
                  ),
                  Screen(4, _pageController, true, false, 
                    false,0,
                    getVerse(114, 1) +
                        getVerseEndSymbol(1) +
                        getVerse(114, 2) +
                        getVerseEndSymbol(2) +
                        getVerse(114, 3) +
                        getVerseEndSymbol(3) +
                        getVerse(114, 4) +
                        getVerseEndSymbol(4)+
                        getVerse(114, 5) +
                        getVerseEndSymbol(5) +
                        getVerse(114, 6) +
                        getVerseEndSymbol(6),
                  ),
                  Screen(5, _pageController, false, false,
                    false,0,
                   'أصبحنا وأصبح الملك لله والحمد لله لا إله إلا الله وحده لا شريك له له الملك وله الحمد وهو على كل شيء قدير ربِ اسألك خير ما في هذا اليوم وخير ما بعده واعوذ بك من شر ما في هذا اليوم وشر ما بعده ربِّ اعوذ بك من الكسل وسوء الكبر ربِّ اعوذ بك من عذاب في النار وعذاب في القبر'),
                  Screen(6, _pageController, false, false,
                    false,0,
                   'اللهم بك أصبحنا \n وبك أمسينا\n وبك نحيا \n وبك نموت \n وإليك النشور'),
                  Screen(7, _pageController, false, false,
                    false,0,
                   'اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك، ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي، وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت'),
                  Screen(6, _pageController, false, false,
                    true,4,
                   'اللهم إني اصبحت أشهدك \n وأشهد حملة عرشك، \n وملائكتك وجميع خلقك، \n إنك انت الله لا إله إلا انت \n وحدك لا شريك لك، وأن محمدًا عبدك ورسولك'),
                  Screen(6, _pageController, false, false,
                    false,0,
                   'اللهُم ما أصبح بي من نعمة\n أو بأحد من خلقك،\n فمنك وحدك لا شريك لك،\n فلك الحمد ولك الشكر، فقد أدّى شُكر يومه'),
                  Screen(6, _pageController, false, false,
                    true,3,
                   'اللَّهمَّ عافِني في بَدَني،\n اللَّهمَّ عافِني في سَمْعي،\n اللَّهمَّ عافِني في بَصَري،\n لا إلهَ إلَّا أنتَ.\n اللَّهمَّ إنِّي أَعوذُ بكَ منَ الكُفرِ والفَقرِ،\n اللَّهمَّ إنِّي أَعوذُ بِكَ مِن عَذابِ القَبرِ،\n لا إلهَ إلَّا أنتَ'),
                  Screen(6, _pageController, false, false,
                    true,7,
                   'حَسْبِيَ اللَّهُ\n لا إِلَهَ إِلا هُوَ\n عَلَيْهِ تَوَكَّلْتُ\n وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ'),
                  Screen(6, _pageController, false, false,
                    false,0,
                   'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ\n فِي الدُّنْيَا وَالآخِرَةِ،\n اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي،\n اللَّهُمَّ استُرْ عَوْرَاتي، وآمِنْ رَوْعَاتي،\n اللَّهمَّ احْفَظْنِي مِنْ بَينِ يَدَيَّ، ومِنْ خَلْفي، وَعن يَميني، وعن شِمالي، ومِن فَوْقِي، وأعُوذُ بِعَظَمَتِكَ أنْ أُغْتَالَ مِنْ تَحتي'),
                  Screen(6, _pageController, false, false,
                    false,0,
                   'اللَّهُمَّ عَالِمَ الغَيْبِ والشَّهَادَةِ،\n فَاطِرَ السَّموَاتِ والأرْضِ،\n رَبَّ كُلِّ شَيءٍ ومَلِيْكَه\nُ، أشْهَدُ أنْ لا إلَهَ إلاَّ أنْتَ،\n أعُوذُ بِكَ مِنْ شَرِّ نَفْسِي،\n وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ،\n وأنْ أقْتَرِفَ عَلَى نَفْسِي سُوءاً، أوْ أجُرَّهُ إلَى مُسْلِمٍ'),
                  Screen(6, _pageController, false, false,
                    true,3,
                   'بسم الله\n الذي لا يضر\n مع اسمه شيء\n في الأرض\n ولا في السماء\n وهو السميع العليم'),
                  Screen(6, _pageController, false, false,
                    true,3,
                   'رضيت بالله رباً،\n وبالإسلام ديناً،\n وبمحمد صلى الله عليه وسلم نبياً'),
                  Screen(6, _pageController, false, false,
                    false,0,
                   'يا حيّ يا قَيُّومُ برحمتك أستغيثُ،\n أصلحْ لي شأني كلَّه،\n وَلَا تَكِلْنِي إِلَى نفسي طَرْفَةَ عين \n أصبحنا وأصبح الملك لله رب العالمين،\n اللهم إني أسألك خير مافي هذا اليوم : فتحه ، ونصره ، ونوره ، وبركته ، وهداه وأعوذ بك من شر مافيه وشر ما بعده'),
                  Screen(6, _pageController, false, false,
                    false,0,
                   'أَصبَحْنا على فِطرةِ الإسلامِ،\n وكَلِمةِ الإخلاصِ،\n ودِينِ نَبيِّنا محمَّدٍ صلَّى اللهُ عليه وسلَّمَ\n وعلى مِلَّةِ أبِينا إبراهيمَ، حَنيفًا مُسلِمًا،\n وما كان مِنَ المُشرِكينَ'),
                  Screen(6, _pageController, false, false,
                    true,100,
                   'سبحان\n اللهِ\n \nوبحمدِه'),
                  Screen(6, _pageController, false, false,
                    true,100,
                   'لا إلهَ إلاَّ اللَّه وحْدهُ لاَ شَرِيكَ لهُ،\n لَهُ المُلْكُ، ولَهُ الحمْدُ،\n وَهُو عَلَى كُلِّ شَيءٍ قَدِيرٌ'),
                  Screen(6, _pageController, false, false,
                    true,3,
                   'سُبحانَ اللهِ وبحَمْدِه\n عَدَدَ خَلْقِه،\n ورِضا نَفْسِه،\n وزِنةَ عَرْشِه،\n ومِدادَ كَلِماتِه'),
                  Screen(6, _pageController, false, false,
                    false,0,
                   'اللَّهُمَّ إنِّي أسأَلُك\n عِلْمًا نافعًا\n ورِزْقًا طيِّبًا\n وعَمَلًا مُتقبَّلًا'),
                  Screen(6, _pageController, false, false,
                    true,10,
                   'اللهم صلِّ وسلِّم على نبينا محمد'),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
