import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/resources/app_colors.dart';
import 'package:ugmis/resources/sizes.dart';
import '../controllers/dashboard_controller.dart';

class DashboardViewTab extends GetView<DashboardController> {
  const DashboardViewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: controller.images.length,
      itemBuilder: (context, index) {
        return Container(
          width: 150.0,
          height: 150.0,
          padding: const EdgeInsets.all(8.0),
          child: PhysicalModel(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(Sizes.radiusSmall),
            elevation: 4.0,
            color: AppColors.primary,            
            child: Column(
              children: [
                Expanded(child: Image.asset(controller.images[index],)),
                Container(
                  alignment: Alignment.center,
                  height: 30.0,
                  width: double.infinity,
                  color: AppColors.white,
                  child: Text(controller.strings[index])),
              ],
            )
          ),
        );
      }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}