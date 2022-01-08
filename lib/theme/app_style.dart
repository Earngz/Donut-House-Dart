import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app_colors.dart';
import 'app_size.dart';

const List<BoxShadow> kBtnShadow = [
  BoxShadow(
    color: kBtnShadowColor,
    offset: Offset(0, 8),
    blurRadius: 20,
  )
];

const TextStyle kTitleTextStyle = TextStyle(
  fontSize: kTitleTextSize,
  color: kTextColor,
  fontWeight: kMediumFontWeight,
);

const TextStyle kBodyTextStyle = TextStyle(
  fontSize: kBodyTextSize,
  color: kTextColor,
  fontWeight: kLightFontWeight,
);

const TextStyle kBtnTextStyle = TextStyle(
  color: kBtnColorStart,
  fontSize: kBtnTextSize,
  fontWeight: kMediumFontWeight,
);

InputBorder kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputBorderRadius),
  borderSide: BorderSide(
    width: 1,
    color: kInputBorderColor,
  ),
);

const TextStyle kTextHeadStyle = TextStyle(
  fontSize: kBtnTextSize,
  fontWeight: FontWeight.bold,
);

const TextStyle kCardTextStyle = TextStyle(
  color: kTextColor,
  fontSize: kTextsize,
  fontWeight: kMediumFontWeight,
);

const List<BoxShadow> kCardShadow = [
  BoxShadow(
    color: kBgColor,
    offset: Offset(0, 1),
  )
];

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;

  const PrimaryText({
    required this.text,
    this.fontWeight: FontWeight.w400,
    this.color: AppColors.secondary,
    this.size: 20,
    this.height: 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: color,
          height: height,
          fontFamily: 'Poppins',
          fontSize: size,
          fontWeight: fontWeight,
        ));
  }
}
