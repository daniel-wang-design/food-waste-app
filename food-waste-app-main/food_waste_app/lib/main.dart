import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MoreDetails.dart';
import "LaunchPage.dart";
import 'RestaurantProfile.dart';
import 'LoginPage.dart';
import 'CustomerHomepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SearchPage.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: MoreDetails(),
    );
  }
}