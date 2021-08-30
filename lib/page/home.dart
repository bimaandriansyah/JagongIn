import 'Dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jagongin_apps/constant/constant.dart';
import 'package:jagongin_apps/routes/pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeHeigh = Get.height;
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              HeaderHome(sizeHeigh: sizeHeigh),
              BtnActionHome(),
              SizedBox(height: kDefaultPadding),
              DataCard(status: true),
              DataCard(),
            ],
          ),
        ),
        floatingActionButton: FloatingButton(),
      ),
    );
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Get.toNamed(AppPages.Add);
      },
      child: Icon(
        Feather.plus,
        color: Colors.white,
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}

class DataCard extends StatelessWidget {
  const DataCard({
    Key? key,
    this.status,
  }) : super(key: key);

  final bool? status;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bottomSheet();
      },
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: kDefaultPadding / 1.5),
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 1.5,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 5,
                color: Colors.grey.withOpacity(0.3),
              )
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: kSecondColor,
              child: Text("S",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30)),
            ),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Paijo Lesmono",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                      color: kblack, fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Taman, Kota Madiun",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: kblack,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "IDR 100.000",
                  style: GoogleFonts.poppins(
                    color: kblack,
                    fontSize: 15,
                  ),
                ),
              ],
            )),
            status == true
                ? CircleAvatar(
                    backgroundColor: kGreen,
                    child: Icon(
                      Feather.check,
                      color: Colors.white,
                    ),
                  )
                : SizedBox(
                    height: 0,
                  )
          ],
        ),
      ),
    );
  }

  Future<dynamic> bottomSheet() {
    String _value = "Sudah";
    List _listStatus = ["Sudah", "Belum"];

    return Get.bottomSheet(
      Container(
        height: Get.height * 0.75,
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadiusDirectional.circular(5)),
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: kSecondColor,
                child: Text("S",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Paijo Lesmono",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                    color: kblack, fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 2,
              color: Colors.grey.withOpacity(0.2),
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "Alamat",
                    style: GoogleFonts.poppins(
                        color: kblack,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text(
                    "Taman, Kota Madiun",
                    style: GoogleFonts.poppins(
                      color: kblack,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              color: Colors.grey.withOpacity(0.2),
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                children: [
                  Text(
                    "Uang",
                    style: GoogleFonts.poppins(
                        color: kblack,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Text(
                    "IDR 100.000",
                    style: GoogleFonts.poppins(
                      color: kblack,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              color: Colors.grey.withOpacity(0.2),
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Barang",
                    style: GoogleFonts.poppins(
                        color: kblack,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "-",
                    style: GoogleFonts.poppins(
                      color: kblack,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              color: Colors.grey.withOpacity(0.2),
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Status",
                    style: GoogleFonts.poppins(
                        color: kblack,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  DropdownButton(
                      dropdownColor: Colors.white,
                      value: _value,
                      style: GoogleFonts.poppins(color: kblack),
                      icon: Icon(
                        Feather.chevron_down,
                        size: 20,
                        color: kblack,
                      ),
                      hint: Text(
                        "Pilih Status",
                        style: GoogleFonts.poppins(
                          color: kblack,
                          fontSize: 18,
                        ),
                      ),
                      items: _listStatus.map((value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                      onChanged: (value) {}),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 0,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.defaultDialog(
                            backgroundColor: Colors.white,
                            content: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "Yakin ingin menghapus data ini?",
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: kDefaultPadding),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.all(10),
                                                elevation: 0,
                                                primary: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                )),
                                            child: Text("Cancel",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: kPrimaryColor,
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.all(10),
                                                elevation: 0,
                                                primary: kPrimaryColor,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                )),
                                            child: Text("Hapus",
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ))),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10),
                          elevation: 0,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                width: 1,
                                color: kPrimaryColor,
                              ))),
                      child: Text(
                        "Hapus",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10),
                          elevation: 0,
                          primary: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                      child: Text("Ok",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
              ],
            )
          ],
        ),
      ),
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
        topEnd: Radius.circular(25),
        topStart: Radius.circular(25),
      )),
    );
  }
}

class BtnActionHome extends StatelessWidget {
  const BtnActionHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      width: 1,
                      color: kPrimaryColor,
                    ))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Feather.filter,
                  color: kPrimaryColor,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Filters",
                  style: GoogleFonts.poppins(color: kPrimaryColor),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      width: 1,
                      color: kPrimaryColor,
                    ))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: 90 * pi / 180,
                  child: Icon(
                    Feather.code,
                    color: kPrimaryColor,
                    size: 15,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sort",
                  style: GoogleFonts.poppins(color: kPrimaryColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key? key,
    required this.sizeHeigh,
  }) : super(key: key);

  final double sizeHeigh;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding),
      height: sizeHeigh * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding,
                top: kDefaultPadding + 20),
            height: sizeHeigh * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Bima Andriansyah",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)),
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://raw.githubusercontent.com/abuanwar072/Plant-App-Flutter-UI/master/assets/images/image_3.png")),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.only(
                    left: kDefaultPadding, right: kDefaultPadding / 2),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 10,
                          color: Colors.grey.withOpacity(0.3))
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: GoogleFonts.poppins(color: kblack),
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(0.5)),
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Feather.search,
                          color: Colors.grey.withOpacity(0.5),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
