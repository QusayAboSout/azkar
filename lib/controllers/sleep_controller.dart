import 'package:azkar/controllers/pageview_controller.dart';
import 'package:get/get.dart';

class SleepController extends GetxController {

  SleepController(){
    updateMaxAzkarNumber();
  }

  void updateMaxAzkarNumber(){
    final PageviewController pageviewController = Get.find<PageviewController>();
    pageviewController.lastNumber = 20;
  }
}