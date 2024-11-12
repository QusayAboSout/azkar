import 'package:azkar/custom/colors.dart';
import 'package:flutter/material.dart';
import 'package:quran/quran.dart';

class Screen extends StatefulWidget {
  Screen(this.pageNumber, this._pageController, this.isSurah, this.isAya,
      this._text,
      {super.key});
  int pageNumber;
  final PageController _pageController;
  bool isSurah = false;
  final String _text;
  bool isAya = false;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Material(
          color: Colors.transparent,
          child: Container(
            color: Colors.grey[800],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  upperBody(widget.pageNumber), // Reusable upper body section
                  ///////////////////////////////////////////////
                  if (widget.isAya)
                    Column(
                      children: [
                        const Text(
                          'أعوذ بالله من الشيطان الرجيم',
                          style: TextStyle(
                              fontSize: 20, color: AppColors.lightGreen),
                        ),
                        TheMainText(widget._text),
                      ],
                    )
                  else if (widget.isSurah)
                    Column(
                      children: [
                        const Text(
                          basmala,
                          style: TextStyle(
                              fontSize: 20, color: AppColors.lightGreen),
                        ),
                        TheMainText(widget._text),
                        const Text('ثلاث مرات',
                            style: TextStyle(
                                fontSize: 20, color: AppColors.lightGreen))
                      ],
                    )
                  else
                    TheMainText(widget._text),
                  /////////////////////////////////////////////////
                  lowerBody(
                      goToNextPage), // Reusable lower body section with button
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget upperBody(int pageNumber) {
    return Container(
      color: const Color.fromARGB(185, 196, 218, 210),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.circle_outlined,
            size: 100,
          ),
          const SizedBox(),
          const SizedBox(),
          Text(
            '$pageNumber/4',
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget lowerBody(Function goToNextPage) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        color: const Color.fromARGB(185, 196, 218, 210),
        iconSize: 30,
        onPressed: () {
          goToNextPage();
        },
        icon: const Icon(Icons.keyboard_double_arrow_down_sharp),
      ),
    );
  }

  void goToNextPage() {
    if (widget._pageController.hasClients) {
      widget._pageController.nextPage(
        duration: const Duration(milliseconds: 600),
        curve: Curves.fastOutSlowIn,
      );
    }
  }
}

Widget TheMainText(String text) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 30, color: Color.fromRGBO(207, 231, 222, 1),height: 1.3),
      textAlign: TextAlign.center,
    ),
  );
}
