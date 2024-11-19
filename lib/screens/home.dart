import 'dart:io';

import 'package:azkar/custom/colors.dart';
import 'package:azkar/custom/large_button.dart';
import 'package:azkar/screens/main_azkar/masa.dart';
import 'package:azkar/screens/main_azkar/sabah.dart';
import 'package:azkar/screens/main_azkar/sleep.dart';
import 'package:azkar/screens/main_azkar/wakeup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PagesCount{
  static final PagesCount _instance = PagesCount._internal();
  int maxPages = 0; // Default value
  factory PagesCount() {
    return _instance;
  }
  PagesCount._internal();
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('أذكاري',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: AppColors.lightGreen),),
          centerTitle: true,
        ),
        body: GridView.count(
          crossAxisCount: 1, // 2 buttons per row
          crossAxisSpacing: 10, // Space between buttons horizontally
          mainAxisSpacing: 30, // Space between buttons vertically
          padding: const EdgeInsets.all(30),
          childAspectRatio: 2.4,
          children: [
            Hero(
              tag: 'wakeup',
              child: LargeButton(
                text: 'أذكار الاستيقاظ من النوم',
                color: const Color.fromARGB(216, 238, 238, 238),
                imageUrl: 'assets/images/wakeup.png',
                onTap: (){
                  Get.to(() => const Wakeup());
                },
              ),
            ),
             Hero(
              tag: 'sabah',
               child: LargeButton(
                text: 'أذكار الصباح',
                imageUrl: 'assets/images/sabah.png',
                onTap: (){
                  Get.to(()=> const Sabah());
                },
                color: const Color.fromARGB(255, 0, 0, 0),
                           ),
             ),
             Hero(
              tag: 'masa',
               child: LargeButton(
                text: 'أذكار المساء',
                imageUrl: 'assets/images/masa.png',
                onTap: (){
                  Get.to(() => const Masa());
                },
                color: Colors.black,
                           ),
             ),
            Hero(
              tag: 'sleep',
              child: LargeButton(
                text: 'أذكار النوم',
                color: const Color.fromARGB(216, 238, 238, 238),
                imageUrl: 'assets/images/sleep.jpg',
                onTap: (){
                  Get.to(() => const Sleep());
                },
              ),
            ),
          ],
        ));
  }
}
