import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/launcher_painter.dart';
import '../controllers/launcher_controller.dart';

class LauncherView extends GetView<LauncherController> {
  const LauncherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerLeft,
        constraints: const BoxConstraints.expand(),
        child: GetBuilder<LauncherController>(
          id: 'animation',
          builder: (_) {
            return Transform.scale(
              scale: controller.scaleAnimation!.value,
              child: CustomPaint(
                size: MediaQuery.of(context).size,
                painter: LauncherPainter(
                    progress: controller.progressAnimation!.value),
              ),
            );
          },
        ),
      ),
    );
  }
}
