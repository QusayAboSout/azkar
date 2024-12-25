import 'package:azkar/controllers/pageview_controller.dart';
import 'package:azkar/custom/colors.dart';
import 'package:azkar/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Get.put(PageviewController());

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  void initialization() async {
    setState(() {
      FlutterNativeSplash.remove();
    });

    print('Splash Hello :) ');
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
    print('Splash End :(');
  }

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
          scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.main,
            centerTitle: true,
            titleTextStyle: TextStyle(
                color: Color.fromARGB(185, 196, 218, 210), fontSize: 30),
          )),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
