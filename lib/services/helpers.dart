import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';
import 'package:slope_chat_app/utilis/designs/styles.dart';

class Helpers {
  static showSnackBar({
    required BuildContext context,
    required String title,
    required kColor,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 3000),
        backgroundColor: kColor,
        content: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: sPrimaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )
            ],
          ),
        ),
        behavior: SnackBarBehavior.floating,
        elevation: 5,
        width: 250.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
    );
  }

  static void showAppDialog(
      {required BuildContext context,
      String title = 'Please wait...',
      bool dismissible = false,
      message}) {
    showDialog(
        context: context,
        barrierDismissible: dismissible,
        builder: (context) {
          return Center(
              child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: StatefulBuilder(
              builder: (context, setState) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/cignifi.png'),
                        height: 200,
                        width: 230,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [CircularProgressIndicator(
                          backgroundColor: kPrimaryColor,
                        )],
                      )
                    ],
                  ),
                );
              },
            ),
          ));
        });
  }
}
