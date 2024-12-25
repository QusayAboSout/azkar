import 'package:azkar/Classes/day_and_date.dart';
import 'package:azkar/controllers/mini_masa_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiniMasa extends StatefulWidget {
  const MiniMasa({super.key});

  @override
  State<MiniMasa> createState() => _MasaState();
}

class _MasaState extends State<MiniMasa> {
  final PageController _pageController = PageController(initialPage: 0);
  final MiniMasaController _miniMasaController = Get.put(MiniMasaController());
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MiniMasaController>(
        init: _miniMasaController,
        builder: (context) {
          return Hero(
            tag: 'masa',
            child: Scaffold(
              appBar: AppBar(
                title: const Text('أذكار المساء',
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

                    Expanded(
                      child: _miniMasaController.Data(_pageController),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
