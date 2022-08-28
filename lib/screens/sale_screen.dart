import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';
import 'package:slope_chat_app/utilis/designs/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SaleScreen extends StatefulWidget {
  const SaleScreen({Key? key}) : super(key: key);

  @override
  State<SaleScreen> createState() => _SaleScreenState();
}

class _SaleScreenState extends State<SaleScreen> {
  // final _auth = FirebaseAuth.instance;
  // late Firebase loggedInUser;

  // void getCurrentUser() async {
  //   final user = await _auth.currentUser;

  //   if (user != null) {
  //     // loggedInUser = user;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.logout_outlined),
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
        ),
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
      ),
      body: SafeArea(
        child: Center(
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Sale Screen',
              style: sPrimaryTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
