import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/launcher_painter.dart';
import '../controllers/launcher_controller.dart';
import '../../../../resources/app_images.dart';

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
            return Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Transform.scale(
                  scale: controller.scaleAnimation!.value,
                  child:
                  !controller.scaleAnimation!.isCompleted 
                  ? CustomPaint(
                    size: Size(MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height * 0.35),
                    painter: LauncherPainter(
                        progress: controller.progressAnimation!.value),
                  )
                  : Container()

                ),
                controller.scaleAnimation!.isCompleted
                ? Image.asset(AppImages.sesLogo,scale: 0.6)
                : Container() // opacity: controller.progressAnimation!.value)
              ],
            );
          },
        ),
      ),
    );
  }
}
