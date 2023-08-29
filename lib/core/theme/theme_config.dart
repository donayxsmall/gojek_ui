import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color green1 = const Color(0xff097210);
Color green2 = const Color(0xff00880F);

Color dark1 = const Color(0xff1C1C1C);
Color dark2 = const Color(0xff4A4A4A);
Color dark3 = const Color(0xff999798);
Color dark4 = const Color(0xffEDEDED);

Color blue1 = const Color(0xff0281A0);
Color blue2 = const Color(0xff00AED5);
Color blue3 = const Color(0xff38BBDA);

Color red = const Color(0xffED2739);
Color purple = const Color(0xff87027B);

TextStyle regular12_5 = GoogleFonts.lato(
  textStyle: const TextStyle(fontSize: 12.5),
);
TextStyle regular14 = regular12_5.copyWith(fontSize: 14);

TextStyle semibold12_5 = regular12_5.copyWith(fontWeight: FontWeight.w600);
TextStyle semibold14 = semibold12_5.copyWith(fontSize: 14, letterSpacing: 0.1);

TextStyle bold16 = regular12_5.copyWith(
    fontSize: 16, fontWeight: FontWeight.w700, letterSpacing: 0.1);
TextStyle bold18 = bold16.copyWith(fontSize: 18, letterSpacing: -0.5);
