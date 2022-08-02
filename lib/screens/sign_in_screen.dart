import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:slope_chat_app/components/spacers.dart';
import 'package:slope_chat_app/utilis/designs/assets.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';
import 'package:slope_chat_app/utilis/designs/styles.dart';
import 'package:slope_chat_app/utilis/res/res_profile.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final double space = 18;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Material(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          margin: const EdgeInsets.only(top: 65.0, left: 30),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  ResSignInPage.welcome,
                  style: sPrimaryTextStyle.copyWith(
                      letterSpacing: 4.0, fontSize: 45.0, color: kPrimaryColor),
                ),
              ),
              Expanded(child: Center())
            ],
          ),
        ),
      ),
    ));
  }
}
