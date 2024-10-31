import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/page_data.dart';
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
    int fsize;
    if (widget.isSurah) {
      fsize = 30;
      return const Padding(
          padding: EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ));
    } else {
      fsize = 25;
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
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        widget._text,
                        style: const TextStyle(fontSize: 30),
                        textAlign: TextAlign.center,
                      ),
                    ),
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
  }

  Widget upperBody(int pageNumber) {
    return Container(
      color: Colors.grey[600],
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
