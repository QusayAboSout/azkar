import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/masa_controller.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/quran.dart';

class Masa extends StatefulWidget {
  const Masa({super.key});

  @override
  State<Masa> createState() => _MasaState();
}

class _MasaState extends State<Masa> {
  final PageController _pageController = PageController(initialPage: 0);
  final MasaController _controller = Get.put(MasaController());
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MasaController>(
        init: _controller,
        builder: (context) {
          return Hero(
            tag: 'masa',
            child: Scaffold(
              appBar: AppBar(
                title: const Text('أذكار المساء'),
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
                        Screen(1, _pageController, false, true, false, 0,
                            getVerse(2, 255)),
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
                        Screen(5, _pageController, false, false, false, 0,
                            'أَمْسَيْنَا وَأَمْسَى المُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ لا إلَهَ إلَّا اللَّهُ، وَحْدَهُ لا شَرِيكَ له، له المُلْكُ وَلَهُ الحَمْدُ وَهو علَى كُلِّ شيءٍ قَدِيرٌ، رَبِّ أَسْأَلُكَ خَيْرَ ما في هذِه اللَّيْلَةِ وَخَيْرَ ما بَعْدَهَا، وَأَعُوذُ بكَ مِن شَرِّ ما في هذِه اللَّيْلَةِ وَشَرِّ ما بَعْدَهَا، رَبِّ أَعُوذُ بكَ مِنَ الكَسَلِ وَسُوءِ الكِبَرِ، رَبِّ أَعُوذُ بكَ مِن عَذَابٍ في النَّارِ وَعَذَابٍ في القَبْرِ'),
                        Screen(6, _pageController, false, false, false, 0,
                            'اللهمَّ بك أَمسَيْنا، \nوبك أصبَحْنا\n وبك نحيا،\n وبك نموتُ،\n وإليك النُّشورُ'),
                        Screen(7, _pageController, false, false, false, 0,
                            'اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك، ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي، وأبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت'),
                        Screen(8, _pageController, false, false, true, 4,
                            'اللهم إني أمسيتُ أُشهدكَ\n وأُشهدُ حملةَ عرشك\n وملائكتكَ وجميع خلقك\n أنك أنت الله لا إله إلا انت\n وحدك لا شريك لك\n وأن محمدًا عَبدٌكَ ورسولك'),
                        Screen(9, _pageController, false, false, false, 0,
                            'اللَّهُـمَّ مَا أَمْسَى بِي\n مِـنْ نِعْـمَةٍ\n أَوْ بِأَحَـدٍ مِـنْ خَلْـقِكَ،\n فَمِـنْكَ وَحْـدَكَ لاَ شَرِيكَ لَـكَ،\n فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـرُ'),
                        Screen(10, _pageController, false, false, true, 3,
                            'اللَّهمَّ عافِني في بَدَني،\n اللَّهمَّ عافِني في سَمْعي،\n اللَّهمَّ عافِني في بَصَري،\n لا إلهَ إلَّا أنتَ.\n اللَّهمَّ إنِّي أَعوذُ بكَ منَ الكُفرِ والفَقرِ،\n اللَّهمَّ إنِّي أَعوذُ بِكَ مِن عَذابِ القَبرِ،\n لا إلهَ إلَّا أنتَ'),
                        Screen(11, _pageController, false, false, true, 7,
                            'حَسْبِيَ اللَّهُ\n لا إِلَهَ إِلا هُوَ\n عَلَيْهِ تَوَكَّلْتُ\n وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ'),
                        Screen(12, _pageController, false, false, false, 0,
                            'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ\n فِي الدُّنْيَا وَالآخِرَةِ،\n اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي،\n اللَّهُمَّ استُرْ عَوْرَاتي، وآمِنْ رَوْعَاتي،\n اللَّهمَّ احْفَظْنِي مِنْ بَينِ يَدَيَّ، ومِنْ خَلْفي، وَعن يَميني، وعن شِمالي، ومِن فَوْقِي، وأعُوذُ بِعَظَمَتِكَ أنْ أُغْتَالَ مِنْ تَحتي'),
                        Screen(13, _pageController, false, false, false, 0,
                            'اللَّهُمَّ عَالِمَ الغَيْبِ والشَّهَادَةِ،\n فَاطِرَ السَّموَاتِ والأرْضِ،\n رَبَّ كُلِّ شَيءٍ ومَلِيْكَه\nُ، أشْهَدُ أنْ لا إلَهَ إلاَّ أنْتَ،\n أعُوذُ بِكَ مِنْ شَرِّ نَفْسِي،\n وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ،\n وأنْ أقْتَرِفَ عَلَى نَفْسِي سُوءاً، أوْ أجُرَّهُ إلَى مُسْلِمٍ'),
                        Screen(14, _pageController, false, false, true, 3,
                            'بسم الله\n الذي لا يضر\n مع اسمه شيء\n في الأرض\n ولا في السماء\n وهو السميع العليم'),
                        Screen(15, _pageController, false, false, true, 3,
                            'رضيت بالله رباً،\n وبالإسلام ديناً،\n وبمحمد صلى الله عليه وسلم نبياً'),
                        Screen(16, _pageController, false, false, false, 0,
                            'يا حيّ يا قَيُّومُ برحمتك أستغيثُ،\n أصلحْ لي شأني كلَّه،\n وَلَا تَكِلْنِي إِلَى نفسي طَرْفَةَ عين \n أمسينا وأمسى الملك لله رب العالمين،\n االلهم إني أسألك خير مافي هذا الليلة : فتحها ، ونصرها ، ونورها ، وبركتها ، وهداها وأعوذ بك من شر مافيها وشر ما بعده'),
                        Screen(17, _pageController, false, false, false, 0,
                            'أمسينا على فِطرةِ الإسلامِ،\n وكَلِمةِ الإخلاصِ،\n ودِينِ نَبيِّنا محمَّدٍ صلَّى اللهُ عليه وسلَّمَ\n وعلى مِلَّةِ أبِينا إبراهيمَ، حَنيفًا مُسلِمًا،\n وما كان مِنَ المُشرِكينَ'),
                        Screen(18, _pageController, false, false, true, 100,
                            'سبحان اللهِ وبحمدِه'),
                        Screen(19, _pageController, false, false, true, 3,
                            'أعوذُ بكلماتِ الله التاماتِ من شرِّ ما خلقَ'),
                        Screen(20, _pageController, false, false, true, 10,
                            'لا إلهَ إلاَّ اللَّه وحْدهُ لاَ شَرِيكَ لهُ،\n لَهُ المُلْكُ، ولَهُ الحمْدُ،\n وَهُو عَلَى كُلِّ شَيءٍ قَدِيرٌ'),
                        Screen(21, _pageController, false, false, true, 3,
                            'سُبحانَ اللهِ وبحَمْدِه\n عَدَدَ خَلْقِه،\n ورِضا نَفْسِه،\n وزِنةَ عَرْشِه،\n ومِدادَ كَلِماتِه'),
                        Screen(22, _pageController, false, false, false, 0,
                            'اللَّهُمَّ إنِّي أسأَلُك\n عِلْمًا نافعًا\n ورِزْقًا طيِّبًا\n وعَمَلًا مُتقبَّلًا'),
                        Screen(23, _pageController, false, false, true, 10,
                            'اللهم صلِّ وسلِّم على نبينا محمد'),
                      ],
                    ))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
