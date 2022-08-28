import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:slope_chat_app/components/buttons.dart';
import 'package:slope_chat_app/components/spacers.dart';
import 'package:slope_chat_app/models/pages.dart';
import 'package:slope_chat_app/utilis/designs/assets.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';
import 'package:slope_chat_app/utilis/designs/styles.dart';
import 'package:slope_chat_app/utilis/res/res_profile.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {});
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final double space = 18;
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          backgroundColor: animation.value,
          body: Material(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'cignifi',
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image(
                        image: AssetImage(Assets.cignifiLogo),
                        width: 160.0,
                        height: 120.0,
                      ),
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
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                  ResWelcomePage.welcomeMessage,
                                  textStyle: sWelComeMessageTextStyle)
                            ],
                          ),
                          vSpace(space * 4),
                          primaryButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SlopeChatApp.signInPath);
                            },
                            text: ResWelcomePage.logIn,
                            textColor: Colors.white,
                            fillColor: kPrimaryColor,
                          ),
                          vSpace(space),
                          primaryButton(
                            text: ResWelcomePage.signUp,
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SlopeChatApp.sigUpPath);
                            },
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
