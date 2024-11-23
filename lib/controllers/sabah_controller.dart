import 'package:azkar/controllers/pageview_controller.dart';
import 'package:get/get.dart';

class SabahController extends GetxController {

  final PageviewController pageviewController = Get.find<PageviewController>();

  SabahController(){
    updateMaxAzkarNumber();
    pageviewController.zekrCount = 0;
  }

  void updateMaxAzkarNumber(){
    pageviewController.lastNumber = 22;
  }

  void updateZekrCount(){
    pageviewController.zekrCount++;
  }
}