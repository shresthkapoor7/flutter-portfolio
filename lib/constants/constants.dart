import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kGrey = Colors.orange;
Color kPrimaryColor = Colors.grey;
Color kWhite = Colors.white;
Color kBlack = Colors.grey;

TextStyle kTitleText = GoogleFonts.poppins(
  color: Colors.black,
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
);

TextStyle kSubTitleText = GoogleFonts.montserrat(
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 12.0,
);

TextStyle kSectionTitleText = GoogleFonts.montserrat(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 24.0,
);

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateColor.resolveWith((states) => kGrey),
    foregroundColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return Colors.black;
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) return Colors.white;
        return kGrey; // Defer to the widget's default.
      },
    ),
  ),
);
