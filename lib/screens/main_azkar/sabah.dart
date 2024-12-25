import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/mini_sabah_controller.dart';
import 'package:azkar/controllers/sabah_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sabah extends StatefulWidget {
  const Sabah({super.key});

  @override
  State<Sabah> createState() => _SabahState();
}

class _SabahState extends State<Sabah> {
  final PageController _pageController = PageController(initialPage: 0);
  final SabahController _sabahController = Get.put(SabahController());
  final MiniSabahController _miniSabahController =
      Get.put(MiniSabahController());
  bool fullAzkar = true;

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
                GetBuilder<SabahController>(
                  init: _sabahController,
                  builder: (context) {
                    _sabahController.updateMaxAzkarNumber();
                    return Expanded(
                      child: _sabahController.Data(_pageController),
                    );
                  },
                )
              else
                GetBuilder<MiniSabahController>(
                  init: _miniSabahController,
                  builder: (context) {
                    _miniSabahController.updateMaxAzkarNumber();
                    return Expanded(
                      child: _miniSabahController.Data(_pageController),
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
