import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

final sPrimaryTextStyle = GoogleFonts.openSans(
    letterSpacing: 2,
    textStyle: const TextStyle(
        fontWeight: FontWeight.w700, fontSize: 26, color: Colors.black));


final sWelComeMessageTextStyle = GoogleFonts.openSans(
    textStyle: const TextStyle(
  wordSpacing: 4,
  fontWeight: FontWeight.bold,
  fontSize: 13,
  color: Colors.grey,
));
const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: kPrimaryColor, width: 2.0),
  ),
);

class CignifiTheme {
  static ThemeData dark() {
    return ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white, backgroundColor: Colors.grey));
  }
}
