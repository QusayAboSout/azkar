import 'package:azkar/controllers/pageview_controller.dart';
import 'package:get/get.dart';

class WakeupController extends GetxController {

  WakeupController(){
    updateMaxAzkarNumber();
  }

  void updateMaxAzkarNumber(){
    final PageviewController _pageviewController= Get.find<PageviewController>();
    _pageviewController.lastNumber = 4;
  }

}