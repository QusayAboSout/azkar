import 'package:azkar/controllers/pageview_controller.dart';
import 'package:get/get.dart';

class MasaController extends GetxController{

  MasaController(){
    updateMaxAzkarNumber();
  }

  void updateMaxAzkarNumber(){
    final PageviewController pageController = Get.find<PageviewController>();
    pageController.lastNumber = 23;
  }
}