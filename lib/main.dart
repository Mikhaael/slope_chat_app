import 'package:flutter/material.dart';
import 'package:slope_chat_app/models/pages.dart';
import 'package:slope_chat_app/screens/sign_in_screen.dart';
import 'package:slope_chat_app/screens/sign_up_screen.dart';
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
      // theme: ThemeData.light(),
      initialRoute: SlopeChatApp.welcomePath,
      routes: {
        SlopeChatApp.welcomePath: (context) => const HomeScreen(),
        SlopeChatApp.signInPath: (context) => const SignInScreen(),
        SlopeChatApp.sigUpPath: (context) => const SignUpScreen(),
      },
    );
  }
}
