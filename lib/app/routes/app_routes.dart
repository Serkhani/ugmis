part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LAUNCHER = _Paths.LAUNCHER;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTRATION = _Paths.REGISTRATION;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LAUNCHER = '/launcher';
  static const LOGIN = '/login';
  static const REGISTRATION = '/registration';
}
