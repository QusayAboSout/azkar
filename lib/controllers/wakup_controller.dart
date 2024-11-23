import 'package:azkar/controllers/pageview_controller.dart';
import 'package:get/get.dart';

class WakeupController extends GetxController {
  final PageviewController pageviewController = Get.find<PageviewController>();

  WakeupController() {
    updateMaxAzkarNumber();
    pageviewController.zekrCount = 0;
  }

  void updateMaxAzkarNumber() {
    pageviewController.lastNumber = 4;
  }

  void updateZekrCount() {
    pageviewController.zekrCount++;
  }
}
