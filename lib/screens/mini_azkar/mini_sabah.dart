import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/mini_sabah_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiniSabah extends StatefulWidget {
  const MiniSabah({super.key});

  @override
  State<MiniSabah> createState() => _SabahState();
}

class _SabahState extends State<MiniSabah> {
  final PageController _pageController = PageController(initialPage: 0);
  final MiniSabahController _miniSabahController =
      Get.put(MiniSabahController());

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
          title: const Text(
            'أذكار الصباح',
            style: TextStyle(
                fontFamily: 'Cairo', fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              /// UPPER PART
              GetBuilder(
                  init: _miniSabahController,
                  builder: (context) {
                    return const UpperPart();
                  }),

              /// Main Part

              Expanded(
                child: _miniSabahController.Data(_pageController),
              )
            ],
          ),
        ),
      ),
    );
  }
}
