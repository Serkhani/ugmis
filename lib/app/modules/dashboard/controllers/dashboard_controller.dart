import 'package:get/get.dart';
import 'package:ugmis/resources/app_images.dart';
import 'package:ugmis/resources/app_strings.dart';

class DashboardController extends GetxController
    with GetTickerProviderStateMixin {
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

  void showProfile(){}

}
