import 'package:azkar/controllers/pageview_controller.dart';
import 'package:get/get.dart';

class SleepController extends GetxController {
  final PageviewController pageviewController = Get.find<PageviewController>();
  SleepController() {
    updateMaxAzkarNumber();
    pageviewController.zekrCount = 0;
  }

  void updateMaxAzkarNumber() {
    pageviewController.lastNumber = 20;
  }

  void updateZekrCount() {
    pageviewController.zekrCount++;
  }
}
