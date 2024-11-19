import 'package:get/get.dart';

class PageviewController extends GetxController {
  int lastNumber = 0;

  void updateMaxAzkarNumber(int maxNumber){
    lastNumber = maxNumber;
    update(['MaxZekrNumber']);
  }
}