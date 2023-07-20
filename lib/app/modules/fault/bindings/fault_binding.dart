import 'package:get/get.dart';

import '../controllers/fault_controller.dart';

class FaultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FaultController>(
      () => FaultController(),
    );
  }
}
