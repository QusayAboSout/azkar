import 'package:azkar/controllers/pageview_controller.dart';
import 'package:azkar/custom/colors.dart';
import 'package:azkar/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  Get.put(PageviewController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale('ar'),
      supportedLocales: const [
        Locale('ar', ''), // Arabic
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 20, 23, 22),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.main,
            centerTitle: true,
            titleTextStyle:
                TextStyle(color: Color.fromARGB(185, 196, 218, 210), fontSize: 30),
          )),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
