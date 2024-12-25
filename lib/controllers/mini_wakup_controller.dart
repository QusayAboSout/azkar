import 'package:azkar/controllers/pageview_controller.dart';
import 'package:azkar/custom/colors.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart';

class MiniWakeupController extends GetxController {
  final PageviewController pageviewController = Get.find<PageviewController>();

  MiniWakeupController() {
    updateMaxAzkarNumber();
    pageviewController.zekrCount = 0;
  }

  void updateMaxAzkarNumber() {
    pageviewController.lastNumber = 4;
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
            'الحَمْدُ لِلَّهِ الذي أحْيَانَا بَعْدَ ما أمَاتَنَا، وإلَيْهِ النُّشُورُ'),
        Screen(2, pageController, false, false, false, 0,
            ' الحمدُ للهِ الذي عافانِى في جَسَدِي ، ورَدَّ عَلَيَّ رُوحِي ، وأَذِنَ لي بذِكْرِه'),
        Screen(3, pageController, false, false, false, 0,
            'لا إلَهَ إلَّا اللَّهُ وحْدَهُ لا شَرِيكَ له، له المُلْكُ وله الحَمْدُ، وهو علَى كُلِّ شيءٍ قَديرٌ،\n الحَمْدُ لِلَّهِ، وسُبْحَانَ اللَّهِ، ولَا إلَهَ إلَّا اللَّهُ، واللَّهُ أَكْبَرُ، ولَا حَوْلَ ولَا قُوَّةَ إلَّا باللَّهِ. (ادعي بما تشاء)'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Material(
              color: Colors.transparent,
              child: Container(
                color: Colors.grey[800],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: const Color.fromARGB(185, 196, 218, 210),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                '-/-',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(),
                              SizedBox(),
                              Text(
                                '4/4',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ///////////////////////////////////////////////
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'أعوذ بالله من الشيطان الرجيم',
                                  style: GoogleFonts.amiri(
                                      textStyle: const TextStyle(
                                          color: AppColors.lightGreen,
                                          fontSize: 20)),
                                ),
                                Text(
                                  '${getVerseEndSymbol(189)} ${getVerse(3, 190)}${getVerseEndSymbol(190)}${getVerse(3, 191)}${getVerseEndSymbol(191)}${getVerse(3, 192)}${getVerseEndSymbol(192)}${getVerse(3, 193)}${getVerseEndSymbol(193)}${getVerse(3, 194)}${getVerseEndSymbol(194)}${getVerse(3, 195)}${getVerseEndSymbol(195)}${getVerse(3, 196)}${getVerseEndSymbol(196)}${getVerse(3, 197)}${getVerseEndSymbol(197)}${getVerse(3, 198)}${getVerseEndSymbol(198)}${getVerse(3, 199)}${getVerseEndSymbol(199)}${getVerse(3, 200)}${getVerseEndSymbol(200)}',
                                  style: GoogleFonts.amiriQuran(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      height: 2,
                                      textStyle: const TextStyle(
                                          fontSize: 28, wordSpacing: 3)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'النهاية',
                          style: TextStyle(
                            color: Color.fromARGB(185, 196, 218, 210),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
