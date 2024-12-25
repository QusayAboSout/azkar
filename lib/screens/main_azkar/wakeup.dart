import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/mini_wakup_controller.dart';
import 'package:azkar/controllers/wakup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wakeup extends StatefulWidget {
  const Wakeup({super.key});
  @override
  State<Wakeup> createState() => _WakeupState();
}

class _WakeupState extends State<Wakeup> {
  final PageController _pageController = PageController(initialPage: 0);
  final WakeupController _wakeupController = Get.put(WakeupController());
  final MiniWakeupController _miniWakeupController =
      Get.put(MiniWakeupController());
  bool fullAzkar = true;

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
          title: const Text(
            'أذكار الاستيقاظ من النوم',
            style: TextStyle(
                fontFamily: 'Cairo', fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              /// UPPER PART
              const UpperPart(),
              /// Main Part
              if (fullAzkar == true)
                GetBuilder<WakeupController>(
                  init: _wakeupController,
                  builder: (context) {
                    _wakeupController.updateMaxAzkarNumber();
                    return Expanded(
                      child: _wakeupController.Data(_pageController),
                    );
                  },
                )
              else
                GetBuilder<MiniWakeupController>(
                  init: _miniWakeupController,
                  builder: (context) {
                    _miniWakeupController.updateMaxAzkarNumber();
                    return Expanded(
                      child: _miniWakeupController.Data(_pageController),
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
