import 'package:azkar/custom/large_button.dart';
import 'package:azkar/screens/main_azkar/sabah.dart';
import 'package:azkar/screens/main_azkar/sleep.dart';
import 'package:azkar/screens/main_azkar/wakeup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('أذكاري',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.amber),),
          
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
                  Get.to(const Sabah());
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
                  print('Are you OK');
                },
                color: Colors.black,
                           ),
             ),
            Hero(
              tag: 'sleep',
              child: LargeButton(
                text: 'أذكار النوم',
                imageUrl: 'assets/images/sleep.jpg',
                onTap: (){
                  print('See you');
                },
              ),
            ),
          ],
        ));
  }
}
