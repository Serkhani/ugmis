import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ugmis/app/routes/app_pages.dart';
import 'package:ugmis/resources/app_images.dart';
import 'package:ugmis/resources/app_strings.dart';

import '../../../data/user.dart';

class DashboardController extends GetxController
    with GetTickerProviderStateMixin {
  late User? user;
  final List<String> images = [
    AppImages.announcement,
    AppImages.clubs,
    AppImages.pastQuestions,
    AppImages.slides,
    AppImages.tasks,
    AppImages.timetable,
  ];

  final List<String> strings = [
    AppStrings.announcements,
    AppStrings.clubs,
    AppStrings.pastQuestions,
    AppStrings.slides,
    AppStrings.tasks,
    AppStrings.timetable,
  ];

  void floatingActionClicked() {
    Get.defaultDialog(
      title: 'Create: ',
      content: SizedBox(
        height: Get.height * 0.6,
        width: Get.width * 0.7,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text('Fault'),
              ),
              ListTile(
                title: Text('Assignment'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signOut() {
    // Get.offNamedUntil(Routes.LOGIN, (route) => false)
    Get.toNamed(Routes.LOGIN);
  }

  void showProfile() {
    Get.defaultDialog(
        title: 'Profile',
        content: Column(
          children: [
            CircleAvatar(
              // child: Image.asset(''),
              child: Container(
                color: Colors.red,
                height: 50.0,
                width: 50.0,
              ),
            ),
            Text(user != null ? '${user?.firstName} ${user?.lastName}' : 'NA'),
            TextButton(
              onPressed: () => signOut(),
              child: const Text("Sign Out"),
            ),
          ],
        ));
  }
}
