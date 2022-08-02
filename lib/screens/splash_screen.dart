import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:slope_chat_app/components/buttons.dart';
import 'package:slope_chat_app/components/spacers.dart';
import 'package:slope_chat_app/utilis/designs/assets.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';
import 'package:slope_chat_app/utilis/designs/styles.dart';
import 'package:slope_chat_app/utilis/res/res_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final double space = 18;
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: Material(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage(Assets.cignifiLogo),
                      width: 150.0,
                      height: 100.0,
                    ),
                  ),
                  vSpace(space / 3),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage(Assets.welcome),
                            height: 325.0,
                            width: 325.0,
                          ),
                          vSpace(space),
                          Text(
                            ResWelcomePage.hello,
                            style: sPrimaryTextStyle,
                          ),
                          vSpace(space / 3),
                          Text(
                            ResWelcomePage.welcomeMessage,
                            style: sWelComeMessageTextStyle,
                          ),
                          vSpace(space * 4),
                          primaryButton(
                            onClick: () {},
                            text: ResWelcomePage.logIn,
                            textColor: Colors.white,
                            fillColor: kPrimaryColor,
                          ),
                          vSpace(space),
                          primaryButton(
                            text: ResWelcomePage.signUp,
                            onClick: () {},
                            fillColor: Colors.white,
                            textColor: kPrimaryColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
