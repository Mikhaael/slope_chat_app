import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slope_chat_app/components/spacers.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';
import 'package:slope_chat_app/utilis/designs/styles.dart';

primaryButton({
  required String text,
  required GestureTapCallback onClick,
  required Color fillColor,
  required Color textColor,
  double leftPadding = 0,
  double rightPadding = 0,
  double bottomPadding = 6,
  double topPadding = 6,
  double borderRadius = 8,
  MainAxisAlignment viewAlignment = MainAxisAlignment.center,
  TextStyle? textStyle,
  FontWeight fontWeight = FontWeight.w700,
}) =>
    InkWell(
      onTap: onClick,
      child: Container(
        width: 220,
        padding: EdgeInsets.only(
            left: leftPadding,
            right: rightPadding,
            top: topPadding,
            bottom: bottomPadding),
        decoration: BoxDecoration(
            color: fillColor,
            border: Border.all(color: kPrimaryColor, width: 3),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: viewAlignment,
          children: [
            Text(
              text,
              style: textStyle ??
                  sPrimaryTextStyle.copyWith(
                      color: textColor,
                      fontWeight: fontWeight,
                      fontSize: 18,
                      letterSpacing: 3),
            ),
          ],
        ),
      ),
    );
