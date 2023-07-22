import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/app/modules/dashboard/views/models/newstile.dart';
import 'package:ugmis/resources/app_colors.dart';
import 'package:ugmis/resources/sizes.dart';
import '../../../../../resources/app_styles.dart';
import '../../controllers/dashboard_controller.dart';

class DashboardViewTab extends GetView<DashboardController> {
  const DashboardViewTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 2.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 120.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Welcome!\n\t\t\tDoluDolu",
              style: AppStyles.inputTextLabelStyle.copyWith(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
              color: Colors.lightBlue,
              height: 200.0,
              child: const ImageCarousel()),
          Expanded(
            child: GridView.builder(
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
                          Expanded(
                              child: Image.asset(
                            controller.images[index],
                          )),
                          Container(
                              alignment: Alignment.center,
                              height: 30.0,
                              width: double.infinity,
                              color: AppColors.white,
                              child: Text(controller.strings[index])),
                        ],
                      )),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
            ),
          ),
        ],
      ),
    );
  }
}
