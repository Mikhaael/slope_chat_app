import 'package:flutter/material.dart';
import 'package:slope_chat_app/components/spacers.dart';
import 'package:slope_chat_app/components/buttons.dart';
import 'package:slope_chat_app/models/pages.dart';
import 'package:slope_chat_app/services/helpers.dart';
import 'package:slope_chat_app/utilis/designs/assets.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';
import 'package:slope_chat_app/utilis/designs/styles.dart';
import 'package:slope_chat_app/utilis/res/res_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final _auth = FirebaseAuth.instance;

  final double space = 18;

  // late String fullName;
  late String email;
  // late String password;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullNameController = TextEditingController();

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
        appBar: AppBar(
          leading: null,
          actions: <Widget>[],
          backgroundColor: kPrimaryColor,
        ),
        body: Material(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            margin: const EdgeInsets.only(left: 10),
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
                  ResSignUpPage.hi,
                  style: sPrimaryTextStyle.copyWith(
                      letterSpacing: 4.0, fontSize: 45.0, color: Colors.black),
                ),
                Text(
                  ResSignUpPage.title,
                  style: sPrimaryTextStyle.copyWith(
                      fontSize: 20.0, color: Colors.grey),
                ),
                vSpace(space * 1.5),
                TextFormField(
                  controller: fullNameController,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 2),
                    ),
                    icon: const Icon(Icons.person),
                    labelText: ResSignUpPage.fullName,
                    labelStyle: sWelComeMessageTextStyle,
                  ),
                  onChanged: (value) {
                    // fullName = value;
                  },
                ),
                vSpace(space * 1.4),
                TextFormField(
                  controller: emailController,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 2),
                    ),
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
                  onChanged: (value) {
                    // email = value;
                  },
                ),
                vSpace(space * 1.4),
                TextFormField(
                  controller: passwordController,
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor, width: 2),
                    ),
                    icon: const Icon(Icons.lock),
                    labelText: ResSignInPage.password,
                    labelStyle: sWelComeMessageTextStyle,
                  ),
                  obscuringCharacter: '*',
                  obscureText: true,
                  onChanged: (value) {
                    // password = value;
                  },
                ),
                vSpace(space * 1.5),
                primaryMediumButton(
                  onPressed: () async {
                    // try {
                    //   final newUser =
                    //       await _auth.createUserWithEmailAndPassword(
                    //           email: email, password: password);
                    //   if (newUser != null) {
                    Navigator.pushNamed(context, SlopeChatApp.salePath);
                    //   }
                    // } catch (e) {}
                  },
                  icon: Icons.person_add_alt_1_rounded,
                  text: ResSignUpPage.signUp,
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
                vSpace(space * 1.5),
                Text(
                  ResSignUpPage.socialMediaSignUp,
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
                vSpace(space),
                Row(
                  children: [
                    Text(
                      ResSignUpPage.alreadyHaveAnAccount,
                      style: sWelComeMessageTextStyle.copyWith(
                        wordSpacing: 2,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    hSpace(space / 3),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SlopeChatApp.signInPath);
                      },
                      child: Text(
                        ResSignUpPage.signIn,
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

