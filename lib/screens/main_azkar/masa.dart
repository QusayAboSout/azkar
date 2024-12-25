import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/masa_controller.dart';
import 'package:azkar/controllers/mini_masa_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Masa extends StatefulWidget {
  const Masa({super.key});

  @override
  State<Masa> createState() => _MasaState();
}

class _MasaState extends State<Masa> {
  final PageController _pageController = PageController(initialPage: 0);
  final MasaController _masaController = Get.put(MasaController());
  final MiniMasaController _miniMasaController = Get.put(MiniMasaController());
  bool fullAzkar = true;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'masa',
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'أذكار المساء',
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
                GetBuilder<MasaController>(
                  init: _masaController,
                  builder: (context) {
                    _masaController.updateMaxAzkarNumber();
                    return Expanded(
                      child: _masaController.Data(_pageController),
                    );
                  },
                )
              else
                GetBuilder<MiniMasaController>(
                  init: _miniMasaController,
                  builder: (context) {
                    _miniMasaController.updateMaxAzkarNumber();
                    return Expanded(
                      child: _miniMasaController.Data(_pageController),
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
