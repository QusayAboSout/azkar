import 'package:azkar/controllers/pageview_controller.dart';
import 'package:azkar/custom/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quran/quran.dart';

class Screen extends StatefulWidget {
  Screen(this.pageNumber, this._pageController, this.isSurah, this.isAya,
      this.isCount, this.timesNumber, this._text,
      {super.key});
  int pageNumber;
  final PageController _pageController;
  bool isSurah = false;
  final String _text;
  bool isAya = false;
  bool isCount = false;
  int timesNumber = 0;

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final PageviewController controller = Get.find<PageviewController>();
  @override
  Widget build(BuildContext context) {
    controller.zekrCount = 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Material(
          color: Colors.transparent,
          child: Container(
            color: Colors.grey[800],
            child: Center(
              child: InkWell(
                onTap: () {
                  if (widget.timesNumber != 0 &&
                      (controller.zekrCount < widget.timesNumber)) {
                    controller.updateZekrCount();
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    upperBody(widget.pageNumber), // Reusable upper body section
                    // Wrapping the main content in Flexible and SingleChildScrollView
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            if (widget.isAya)
                              Column(
                                children: [
                                  Text(
                                    'أعوذ بالله من الشيطان الرجيم',
                                    style: GoogleFonts.amiri(
                                        textStyle: CustomTextStyle()),
                                  ),
                                  TheMainText(widget._text),
                                ],
                              )
                            else if (widget.isSurah)
                              Column(
                                children: [
                                  Text(
                                    basmala,
                                    style: GoogleFonts.amiri(
                                        textStyle: CustomTextStyle()),
                                  ),
                                  TheMainText(widget._text),
                                  const Text(
                                    'ثلاث مرات',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.lightGreen,
                                    ),
                                  ),
                                ],
                              )
                            else if (widget.isCount)
                              Column(
                                children: [
                                  TheMainText(widget._text),
                                  if (widget.timesNumber == 3)
                                    Text("ثلاث مرات", style: CustomTextStyle())
                                  else if (widget.timesNumber == 4)
                                    Text("أربع مرات", style: CustomTextStyle())
                                  else if (widget.timesNumber == 7)
                                    Text("سبع مرات", style: CustomTextStyle())
                                  else if (widget.timesNumber == 100)
                                    Text("مئة مرة", style: CustomTextStyle())
                                  else if (widget.timesNumber == 10)
                                    Text("عشر مرات", style: CustomTextStyle())
                                  else if (widget.timesNumber == 33)
                                    Text("ثلاثا وثلاثين",
                                        style: CustomTextStyle())
                                  else if (widget.timesNumber == 34)
                                    Text("أربعا وثلاثين",
                                        style: CustomTextStyle())
                                ],
                              )
                            else
                              TheMainText(widget._text),
                          ],
                        ),
                      ),
                    ),

                    // Reusable lower body section with button

                    if (widget.pageNumber == controller.lastNumber)
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'النهاية',
                          style: TextStyle(
                              color: Color.fromRGBO(207, 231, 222, 1)),
                        ),
                      )
                    else
                      lowerBody(goToNextPage),
                  ],
                ),
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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            widget.isCount == true || widget.isSurah == true
                ? GetBuilder<PageviewController>(
                    id: 'ZekrCount',
                    builder: (controller) {
                      if (controller.zekrCount >= widget.timesNumber) {
                        return Text(
                          '${controller.zekrCount}/${widget.timesNumber}',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 137, 253, 141)),
                        );
                      } else {
                        return Text(
                          '${controller.zekrCount}/${widget.timesNumber}',
                          style: const TextStyle(fontSize: 20),
                        );
                      }
                    })
                : const Text(
                    '-/-',
                    style: TextStyle(fontSize: 20),
                  ),
            const SizedBox(),
            const SizedBox(),
            GetBuilder<PageviewController>(
                id: 'MaxZekrNumber',
                builder: (controller) {
                  return Text(
                    '$pageNumber/${controller.lastNumber}',
                    style: const TextStyle(fontSize: 20),
                  );
                }),
          ],
        ),
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

  TextStyle CustomTextStyle() {
    return const TextStyle(color: AppColors.lightGreen, fontSize: 20);
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
          fontSize: 30, color: Color.fromRGBO(207, 231, 222, 1), height: 1.3),
      // style: GoogleFonts.amiri(textStyle:  const TextStyle(
      //     fontSize: 30, color: Color.fromRGBO(207, 231, 222, 1), height: 2.0,letterSpacing: 0)),
      textAlign: TextAlign.center,
    ),
  );
}
