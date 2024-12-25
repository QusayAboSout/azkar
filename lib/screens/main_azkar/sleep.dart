import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/mini_sleep_controller.dart';
import 'package:azkar/controllers/sleep_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sleep extends StatefulWidget {
  const Sleep({super.key});

  @override
  State<Sleep> createState() => _SleepState();
}
class _SleepState extends State<Sleep> {
  final PageController _pageController = PageController(initialPage: 0);
  final SleepController _sleepController = Get.put(SleepController());
  final MiniSleepController _miniSleepController =
      Get.put(MiniSleepController());
  bool fullAzkar = true;
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
          actions: [
            const Text('تقليل الإذكار'),
            IconButton(
              onPressed: () {
                setState(() {
                  fullAzkar = !fullAzkar;
                });
              },
              icon: Icon(
                fullAzkar == false ? Icons.arrow_upward : Icons.arrow_downward,
                color: const Color.fromARGB(255, 96, 150, 120),
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              /// UPPER PART
              const UpperPart(),

              /// Main Part
              if (fullAzkar == true)
                GetBuilder<SleepController>(
                  init: _sleepController,
                  builder: (context) {
                    _sleepController.updateMaxAzkarNumber();
                    return Expanded(
                      child: _sleepController.Data(_pageController),
                    );
                  },
                )
              else
                GetBuilder<MiniSleepController>(
                  init: _miniSleepController,
                  builder: (context) {
                    _miniSleepController.updateMaxAzkarNumber();
                    return Expanded(
                      child: _miniSleepController.Data(_pageController),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
