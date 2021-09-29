import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:jagongin_apps/controller/FirebaseController.dart';
import 'package:jagongin_apps/page/home.dart';
import 'package:jagongin_apps/page/login.dart';
import 'package:jagongin_apps/routes/pages.dart';
import 'package:jagongin_apps/themes/themes.dart';
import 'package:get/get.dart';
import 'package:jagongin_apps/utils/circleLoading.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final firebaseC = Get.put(FirebaseController());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: firebaseC.authStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active)
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              // initialRoute:
              //     snapshot.data != null ? AppPages.Home : AppPages.Login,
              getPages: AppRoutes.pages,
              theme: appTheme(),
              home: snapshot.data != null ? HomePage() : LoginPage(),
              defaultTransition: Transition.cupertino,
            );

          return LoadingCircle();
        });
  }
}
