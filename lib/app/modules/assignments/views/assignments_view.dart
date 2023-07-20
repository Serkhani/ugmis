import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/assignments_controller.dart';

class AssignmentsView extends GetView<AssignmentsController> {
  const AssignmentsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AssignmentsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AssignmentsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
