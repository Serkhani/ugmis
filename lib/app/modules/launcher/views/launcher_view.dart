import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/launcher_controller.dart';

class LauncherView extends GetView<LauncherController> {
  const LauncherView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LauncherView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LauncherView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
