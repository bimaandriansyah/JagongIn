import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jagongin_apps/constant/constant.dart';
import 'package:get/get.dart';
import 'package:jagongin_apps/routes/pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.all(kDefaultPadding * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Image.asset(
                'assets/image/iconic.png',
                width: 300,
              ),
              SizedBox(height: 30),
              Image.asset(
                'assets/image/title.png',
                width: 250,
              ),
              SizedBox(height: 30),
              Text(
                "Kami membantu anda untuk mencatat data kondangan dari tamu.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    color: kblack, fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Expanded(child: SizedBox()),
              ElevatedButton(
                  onPressed: () {
                    Get.offNamed(AppPages.Home);
                  },
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      elevation: 0,
                      primary: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(MaterialCommunityIcons.google_plus),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Login dengan Google",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  )),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
