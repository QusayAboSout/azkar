import 'package:get/get.dart';

class PageviewController extends GetxController {
  int lastNumber = 0;
  int zekrCount = 0;

  void updateMaxAzkarNumber(int maxNumber){
    lastNumber = maxNumber;
    update(['MaxZekrNumber']);
  }

  void updateZekrCount(){
    zekrCount++;
    update(['ZekrCount']);
  }
}