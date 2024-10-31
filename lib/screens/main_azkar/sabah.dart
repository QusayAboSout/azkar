import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/custom/page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';

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
    return Scaffold(
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
                Screen(1, _pageController, false,false, ''),
                Screen(2, _pageController, false,false, ''),
                Screen(3, _pageController, false,false, ''),
                Screen(4, _pageController, false,false, ''),
                Screen(5, _pageController, false,false, ''),
                Screen(6, _pageController, false,false, ''),
                Screen(7, _pageController, false,false, ''),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
