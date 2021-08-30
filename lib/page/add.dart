import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jagongin_apps/constant/constant.dart';

class AddPage extends StatelessWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tambah Data",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            InputData(hint: "Nama", input: TextInputAction.next),
            InputData(hint: "Alamat", input: TextInputAction.next),
            InputData(hint: "Uang", input: TextInputAction.next),
            InputData(hint: "Barang *", input: TextInputAction.done),
            SizedBox(
              height: 10,
            ),
            Text("* = Data opsioal",
                style: GoogleFonts.poppins(color: Colors.grey)),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      elevation: 0,
                      primary: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  child: Text("Tambah",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}

class InputData extends StatelessWidget {
  const InputData({
    Key? key,
    required this.hint,
    required this.input,
  }) : super(key: key);

  final String hint;
  final TextInputAction input;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2.5),
      padding:
          EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding / 2),
      height: 54,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Expanded(
        child: TextField(
          keyboardType: TextInputType.text,
          style: GoogleFonts.poppins(color: kblack),
          textInputAction: input,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
