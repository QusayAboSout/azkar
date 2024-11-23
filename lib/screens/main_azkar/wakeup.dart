import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/wakup_controller.dart';
import 'package:azkar/custom/colors.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart';

class Wakeup extends StatefulWidget {
  const Wakeup({super.key});
  @override
  State<Wakeup> createState() => _WakeupState();
}

class _WakeupState extends State<Wakeup> {
  final PageController _pageController = PageController(initialPage: 0);
  final WakeupController _wakeupController = Get.put(WakeupController());
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'wakeup',
      child: Scaffold(
        appBar: AppBar(
          title: const Text('أذكار الاستيقاظ من النوم'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              // UPPER Part
              GetBuilder(
                  init: _wakeupController,
                  builder: (context) {
                    return const UpperPart();
                  }),

              // Main Part
              Expanded(
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.vertical,
                  children: [
                    Screen(1, _pageController, false, false, false, 0,
                        'الحَمْدُ لِلَّهِ الذي أحْيَانَا بَعْدَ ما أمَاتَنَا، وإلَيْهِ النُّشُورُ'),
                    Screen(2, _pageController, false, false, false, 0,
                        ' الحمدُ للهِ الذي عافانِى في جَسَدِي ، ورَدَّ عَلَيَّ رُوحِي ، وأَذِنَ لي بذِكْرِه'),
                    Screen(3, _pageController, false, false, false, 0,
                        'لا إلَهَ إلَّا اللَّهُ وحْدَهُ لا شَرِيكَ له، له المُلْكُ وله الحَمْدُ، وهو علَى كُلِّ شيءٍ قَديرٌ،\n الحَمْدُ لِلَّهِ، وسُبْحَانَ اللَّهِ، ولَا إلَهَ إلَّا اللَّهُ، واللَّهُ أَكْبَرُ، ولَا حَوْلَ ولَا قُوَّةَ إلَّا باللَّهِ. (ادعي بما تشاء)'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            color: Colors.grey[800],
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  upperBody(4), // Reusable upper body section
                                  ///////////////////////////////////////////////
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'أعوذ بالله من الشيطان الرجيم',
                                              style: GoogleFonts.amiri(
                                                  textStyle: const TextStyle(
                                                      color:
                                                          AppColors.lightGreen,
                                                      fontSize: 20)),
                                            ),
                                            Text(
                                              '${getVerseEndSymbol(189)} ${getVerse(3, 190)}${getVerseEndSymbol(190)}${getVerse(3, 191)}${getVerseEndSymbol(191)}${getVerse(3, 192)}${getVerseEndSymbol(192)}${getVerse(3, 193)}${getVerseEndSymbol(193)}${getVerse(3, 194)}${getVerseEndSymbol(194)}${getVerse(3, 195)}${getVerseEndSymbol(195)}${getVerse(3, 196)}${getVerseEndSymbol(196)}${getVerse(3, 197)}${getVerseEndSymbol(197)}${getVerse(3, 198)}${getVerseEndSymbol(198)}${getVerse(3, 199)}${getVerseEndSymbol(199)}${getVerse(3, 200)}${getVerseEndSymbol(200)}',
                                              style: GoogleFonts.amiri(
                                                  color: Colors.white,
                                                  height: 2,
                                                  textStyle: const TextStyle(
                                                      fontSize: 28,
                                                      wordSpacing: 3)),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('النهاية'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget upperBody(int pageNumber) {
    return Container(
      color: const Color.fromARGB(185, 196, 218, 210),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              '-/-',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(),
            const SizedBox(),
            Text(
              '$pageNumber/4',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
