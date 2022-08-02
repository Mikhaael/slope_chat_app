import 'package:flutter/material.dart';
import 'package:slope_chat_app/screens/sign_in_screen.dart';
import 'package:slope_chat_app/screens/welcome_screen.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';

void main() {
  runApp(const CignifiApp());
}

class CignifiApp extends StatelessWidget {
  const CignifiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const SignInScreen(),
    );
  }
}
