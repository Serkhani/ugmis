import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';

class DashboardViewTab extends GetView<DashboardController> {
  const DashboardViewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: controller.images.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(controller.images[index]),
              Text(controller.strings[index])
            ],
          ),
        );
      }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
