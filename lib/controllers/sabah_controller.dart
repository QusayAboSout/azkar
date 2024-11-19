import 'package:azkar/controllers/pageview_controller.dart';
import 'package:get/get.dart';

class SabahController extends GetxController {

  SabahController(){
    updateMaxAzkarNumber();
  }

  void updateMaxAzkarNumber(){
  final PageviewController pageviewController = Get.find<PageviewController>();
    pageviewController.lastNumber = 22;
  }
}