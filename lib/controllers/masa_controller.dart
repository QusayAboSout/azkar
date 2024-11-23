import 'package:azkar/controllers/pageview_controller.dart';
import 'package:get/get.dart';

class MasaController extends GetxController{

  final PageviewController pageviewController = Get.find<PageviewController>();

  MasaController(){
    updateMaxAzkarNumber();
    pageviewController.zekrCount = 0;
  }

  void updateMaxAzkarNumber(){
    pageviewController.lastNumber = 23;
  }

  void updateZekrCount(){
    pageviewController.zekrCount++;
  }
}