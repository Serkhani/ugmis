import 'dart:async';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

import '../../../../app/routes/app_pages.dart';

class LauncherController extends GetxController
    with GetTickerProviderStateMixin {
  AnimationController? scaleController;
  AnimationController? progressController;
  Animation<double>? scaleAnimation;
  Animation<double>? progressAnimation;

  final count = 0.obs;
  @override
  void onInit() {
    progressController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    scaleController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        reverseDuration: const Duration(seconds: 1));
    scaleAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(scaleController!);
    progressAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(progressController!);

    scaleController!.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        Timer(
          const Duration(seconds: 1),
          (() => Get.offNamed(Routes.HOME)),
        );
      }
    });

    scaleController!.addListener(() {
      if (scaleController!.isAnimating) {
        update(['animation']);
      }
    });

    super.onInit();
  }

  @override
  void onReady() {
    Timer(
      const Duration(seconds: 1),
      () {
        scaleController!.forward();
        progressController!.forward();
      },
    );
    super.onReady();
  }

  @override
  void onClose() {
    scaleController!.dispose();
    progressController!.dispose();
    super.onClose();
  }
}
