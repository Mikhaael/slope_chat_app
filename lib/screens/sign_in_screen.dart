import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:slope_chat_app/components/spacers.dart';
import 'package:slope_chat_app/components/buttons.dart';
import 'package:slope_chat_app/models/pages.dart';
import 'package:slope_chat_app/services/helpers.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Material(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            margin: const EdgeInsets.only(left: 5),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'cignifi',
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage(Assets.cignifiLogo),
                      width: 100.0,
                      height: 80.0,
                    ),
                  ),
                ),
                vSpace(space / 3),
                Text(
                  ResSignInPage.welcome,
                  style: sPrimaryTextStyle.copyWith(
                      letterSpacing: 4.0, fontSize: 45.0, color: Colors.black),
                ),
                Text(
                  ResSignInPage.signIn,
                  style: sPrimaryTextStyle.copyWith(
                      fontSize: 20.0, color: Colors.grey),
                ),
                vSpace(space * 3),
                TextFormField(
                  controller: emailController,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: emailController.text.isEmpty
                        ? Container(
                            width: 0,
                          )
                        : IconButton(
                            onPressed: () => emailController.clear(),
                            icon: const Icon(Icons.close),
                          ),
                    icon: const Icon(Icons.email_rounded),
                    labelText: ResSignInPage.email,
                    labelStyle: sWelComeMessageTextStyle,
                  ),
                ),
                vSpace(space * 2),
                TextFormField(
                  controller: passwordController,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.lock),
                    labelText: ResSignInPage.password,
                    labelStyle: sWelComeMessageTextStyle,
                  ),
                  obscuringCharacter: '*',
                  obscureText: true,
                ),
                vSpace(space * 3),
                primaryMediumButton(
                  onPressed: () {},
                  icon: Icons.lock_open,
                  text: ResWelcomePage.logIn,
                ),
                vSpace(space),
                InkWell(
                  onTap: () {},
                  child: Text(
                    ResSignInPage.forgotPassword,
                    style: sWelComeMessageTextStyle.copyWith(
                      wordSpacing: 2,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                vSpace(space * 2),
                Row(
                  children: [
                    const Expanded(
                        child: Divider(
                      thickness: 2,
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        ResSignInPage.oR,
                        style: sWelComeMessageTextStyle,
                      ),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                vSpace(space * 2),
                Text(
                  ResSignInPage.socialMediaLogin,
                  style: sWelComeMessageTextStyle.copyWith(
                    fontSize: 18,
                    color: kPrimaryColor,
                  ),
                ),
                vSpace(space),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialButton(
                      image: Assets.google,
                      onClick: () async {
                        Helpers.showAppDialog(context: context);
                      },
                    ),
                    hSpace(space / 4),
                    socialButton(
                      image: Assets.twitter,
                      onClick: () async {
                        Helpers.showAppDialog(context: context);
                      },
                    ),
                    hSpace(space / 4),
                    socialButton(
                      image: Assets.apple,
                      onClick: () async {
                        Helpers.showAppDialog(context: context);
                      },
                    ),
                  ],
                ),
                vSpace(space * 2),
                Row(
                  children: [
                    Text(
                      ResSignInPage.dontHaveAnAccount,
                      style: sWelComeMessageTextStyle.copyWith(
                        wordSpacing: 2,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    hSpace(space / 3),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SlopeChatApp.sigUpPath);
                      },
                      child: Text(
                        ResSignInPage.signUp,
                        style: sWelComeMessageTextStyle.copyWith(
                          wordSpacing: 2,
                          fontSize: 14,
                          color: kPrimaryColor,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
