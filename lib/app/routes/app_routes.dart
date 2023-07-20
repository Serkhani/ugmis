part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LAUNCHER = _Paths.LAUNCHER;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTRATION = _Paths.REGISTRATION;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const CLUBS = _Paths.CLUBS;
  static const TASKS = _Paths.TASKS;
  static const TEXTBOOKS = _Paths.TEXTBOOKS;
  static const ASSIGNMENTS = _Paths.ASSIGNMENTS;
  static const FAULT = _Paths.FAULT;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LAUNCHER = '/launcher';
  static const LOGIN = '/login';
  static const REGISTRATION = '/registration';
  static const DASHBOARD = '/dashboard';
  static const CLUBS = '/clubs';
  static const TASKS = '/tasks';
  static const TEXTBOOKS = '/textbooks';
  static const ASSIGNMENTS = '/assignments';
  static const FAULT = '/fault';
}
