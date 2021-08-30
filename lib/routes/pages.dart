import 'package:get/get.dart';
import 'package:jagongin_apps/page/add.dart';
import 'package:jagongin_apps/page/home.dart';
import 'package:jagongin_apps/page/login.dart';
import 'package:jagongin_apps/page/splash.dart';

part 'routes.dart';

class AppPages {
  static const Splash = _Paths.Splash;
  static const Login = _Paths.Login;
  static const Home = _Paths.Home;
  static const Add = _Paths.Add;
}

abstract class _Paths {
  static const Splash = '/splash';
  static const Login = '/login';
  static const Home = '/';
  static const Add = '/add';
}
