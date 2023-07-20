import 'package:get/get.dart';

import '../modules/assignments/bindings/assignments_binding.dart';
import '../modules/assignments/views/assignments_view.dart';
import '../modules/clubs/bindings/clubs_binding.dart';
import '../modules/clubs/views/clubs_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/fault/bindings/fault_binding.dart';
import '../modules/fault/views/fault_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/launcher/bindings/launcher_binding.dart';
import '../modules/launcher/views/launcher_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/registration/bindings/registration_binding.dart';
import '../modules/registration/views/registration_view.dart';
import '../modules/tasks/bindings/tasks_binding.dart';
import '../modules/tasks/views/tasks_view.dart';
import '../modules/textbooks/bindings/textbooks_binding.dart';
import '../modules/textbooks/views/textbooks_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LAUNCHER,
      page: () => const LauncherView(),
      binding: LauncherBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => const RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.CLUBS,
      page: () => const ClubsView(),
      binding: ClubsBinding(),
    ),
    GetPage(
      name: _Paths.TASKS,
      page: () => const TasksView(),
      binding: TasksBinding(),
    ),
    GetPage(
      name: _Paths.TEXTBOOKS,
      page: () => const TextbooksView(),
      binding: TextbooksBinding(),
    ),
    GetPage(
      name: _Paths.ASSIGNMENTS,
      page: () => const AssignmentsView(),
      binding: AssignmentsBinding(),
    ),
    GetPage(
      name: _Paths.FAULT,
      page: () => const FaultView(),
      binding: FaultBinding(),
    ),
  ];
}
