part of 'app_pages.dart';
abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LAUNCHER = _Paths.LAUNCHER;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const LAUNCHER = '/launcher';
}
