import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/resources/app_colors.dart';

import '../../controllers/dashboard_controller.dart';


class SystemsView extends GetView<DashboardController> {
  const SystemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: ["MIS", "STS", "SAKAI"]
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListTile(
                  tileColor: AppColors.greyLight,
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward_sharp),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
