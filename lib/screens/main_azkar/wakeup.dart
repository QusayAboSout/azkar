import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:quran/quran.dart';

class Wakeup extends StatefulWidget {
  const Wakeup({super.key});

  @override
  State<Wakeup> createState() => _WakeupState();
}

class _WakeupState extends State<Wakeup> {
  final PageController _pageController = PageController(initialPage: 0);
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
              const UpperPart(),

              // Main Part
              Expanded(
                child: PageView(
                  controller: _pageController,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Screen(1, _pageController, false,false,
                        'الحَمْدُ لِلَّهِ الذي أحْيَانَا بَعْدَ ما أمَاتَنَا، وإلَيْهِ النُّشُورُ'),
                    Screen(2, _pageController, false,false,
                        ' الحمدُ للهِ الذي عافانِى في جَسَدِي ، ورَدَّ عَلَيَّ رُوحِي ، وأَذِنَ لي بذِكْرِه'),
                    Screen(3, _pageController, false,false,
                        'لا إلَهَ إلَّا اللَّهُ وحْدَهُ لا شَرِيكَ له، له المُلْكُ وله الحَمْدُ، وهو علَى كُلِّ شيءٍ قَديرٌ، الحَمْدُ لِلَّهِ، وسُبْحَانَ اللَّهِ، ولَا إلَهَ إلَّا اللَّهُ، واللَّهُ أَكْبَرُ، ولَا حَوْلَ ولَا قُوَّةَ إلَّا باللَّهِ. (ادعي بما تشاء)'),
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
                                        child: Text(
                                          '${getVerseEndSymbol(189)} ${getVerse(3, 190)}${getVerseEndSymbol(190)}${getVerse(3, 191)}${getVerseEndSymbol(191)}${getVerse(3, 192)}${getVerseEndSymbol(192)}${getVerse(3, 193)}${getVerseEndSymbol(193)}${getVerse(3, 194)}${getVerseEndSymbol(194)}${getVerse(3, 195)}${getVerseEndSymbol(195)}${getVerse(3, 196)}${getVerseEndSymbol(196)}${getVerse(3, 197)}${getVerseEndSymbol(197)}${getVerse(3, 198)}${getVerseEndSymbol(198)}${getVerse(3, 199)}${getVerseEndSymbol(199)}${getVerse(3, 200)}${getVerseEndSymbol(200)}',
                                          style: GoogleFonts.amiri(
                                              color: Colors.white,
                                              height: 2,
                                              textStyle: const TextStyle(
                                                  fontSize: 28,
                                                  wordSpacing: 3)),
                                          textAlign: TextAlign.center,
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
      color: Colors.grey[600],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.circle_outlined,
            size: 100,
          ),
          const SizedBox(),
          const SizedBox(),
          Text(
            '$pageNumber/4',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
