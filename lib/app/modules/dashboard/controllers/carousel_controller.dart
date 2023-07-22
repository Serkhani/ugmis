import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class CarouselGetController extends GetxController {
  late CarouselController controller;
  RxInt currIndex = RxInt(0);
  int itemCount = 0;

  @override
  void onInit() {
    controller = CarouselController();
    // controller.startAutoPlay();
    super.onInit();
  }
}
