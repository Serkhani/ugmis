import 'package:get/get.dart';

import '../controllers/textbooks_controller.dart';

class TextbooksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TextbooksController>(
      () => TextbooksController(),
    );
  }
}
