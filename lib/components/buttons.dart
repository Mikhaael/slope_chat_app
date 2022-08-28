import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:slope_chat_app/components/spacers.dart';
import 'package:slope_chat_app/utilis/designs/colors.dart';
import 'package:slope_chat_app/utilis/designs/enums.dart';
import 'package:slope_chat_app/utilis/designs/styles.dart';

primaryButton({
  required String text,
  required GestureTapCallback onPressed,
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
      onTap: onPressed,
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
          borderRadius: BorderRadius.circular(5),
        ),
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

primaryMediumButton(
        {GestureTapCallback? onPressed,
        double leftPadding = 0,
        double rightPadding = 0,
        double bottomPadding = 10,
        double topPadding = 10,
        double borderRadius = 8,
        IconData? icon,
        required String text}) =>
    InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(
            left: leftPadding,
            right: rightPadding,
            top: topPadding,
            bottom: bottomPadding),
        width: 280.0,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            hSpace(18),
            Text(
              text,
              style: sPrimaryTextStyle.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3),
            ),
          ],
        ),
      ),
    );

socialButton({required String image, required GestureTapCallback? onClick}) =>
    InkWell(
      onTap: onClick,
      child: Material(
        child: HoverContainer(
          hoverColor: Colors.grey[100],
          child: Container(
            height: 45.0,
            width: 95.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.transparent,
            ),
            child: Image(
              image: AssetImage(image),
              width: 30.0,
              height: 30.0,
            ),
          ),
        ),
      ),
    );
