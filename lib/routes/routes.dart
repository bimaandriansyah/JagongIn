part of 'pages.dart';

class AppRoutes {
  static const INITIAL = AppPages.Login;

  static final pages = [
    GetPage(name: _Paths.Splash, page: () => SplashPage()),
    GetPage(name: _Paths.Home, page: () => HomePage()),
    GetPage(name: _Paths.Login, page: () => LoginPage()),
    GetPage(name: _Paths.Add, page: () => AddPage())
  ];
}
