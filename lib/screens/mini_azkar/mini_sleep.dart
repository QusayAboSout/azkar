import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/mini_sleep_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiniSleep extends StatefulWidget {
  const MiniSleep({super.key});

  @override
  State<MiniSleep> createState() => _SleepState();
}

class _SleepState extends State<MiniSleep> {
  final PageController _pageController = PageController(initialPage: 0);
  final MiniSleepController _miniSleepController =
      Get.put(MiniSleepController());

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
          title: const Text(
            'أذكار النوم',
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
                  init: _miniSleepController,
                  builder: (context) {
                    return const UpperPart();
                  }),

              /// Main Part
              Expanded(
                child: _miniSleepController.Data(_pageController),
              )
            ],
          ),
        ),
      ),
    );
  }
}
