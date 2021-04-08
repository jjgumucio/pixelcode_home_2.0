import 'package:flutter/material.dart';
import 'package:pixelcode/app/theme_constants.dart';

class BicolorHeader extends StatelessWidget {
  final String firstText, secondText;
  final Color firstTextColor, secondTextColor;

  const BicolorHeader({
    required Key key,
    required this.firstText,
    required this.secondText,
    this.firstTextColor = kPrimaryTextColor,
    this.secondTextColor = kSecondaryTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 28),
        children: [
          TextSpan(
            text: firstText,
            style: TextStyle(
              color: firstTextColor,
            ),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(color: secondTextColor),
          ),
        ],
      ),
    );
  }
}
