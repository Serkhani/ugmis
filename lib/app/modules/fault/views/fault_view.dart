import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/fault_controller.dart';

class FaultView extends GetView<FaultController> {
  const FaultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FaultView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FaultView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
