import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/mini_wakup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiniWakeup extends StatefulWidget {
  const MiniWakeup({super.key});
  @override
  State<MiniWakeup> createState() => _WakeupState();
}

class _WakeupState extends State<MiniWakeup> {
  final PageController _pageController = PageController(initialPage: 0);
  final MiniWakeupController _miniWakeupController =
      Get.put(MiniWakeupController());
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
              // UPPER Part
              GetBuilder(
                  init: _miniWakeupController,
                  builder: (context) {
                    return const UpperPart();
                  }),
              // Main Part
              Expanded(
                child: _miniWakeupController.Data(_pageController),
              )
            ],
          ),
        ),
      ),
    );
  }
}
