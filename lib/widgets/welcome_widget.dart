import 'package:flutter/material.dart';

import 'package:snack/theme/app_colors.dart';
import 'package:snack/theme/app_size.dart';
import 'package:snack/theme/app_style.dart';

class LoginTypeIconWidget extends StatelessWidget {
  const LoginTypeIconWidget({Key? key, required this.icon}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Image.asset(
        icon,
        width: 16,
        height: 16,
      ),
    );
  }
}

class LineWidget extends StatelessWidget {
  const LineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Divider(color: kTextColor),
    );
  }
}

class LoginBtnWidget extends StatelessWidget {
  const LoginBtnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 208,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: kBtnShadow,
        borderRadius: BorderRadius.circular(kBtnRadius),
      ),
      alignment: Alignment.center,
      child: Text(
        'Login',
        style: kBtnTextStyle,
      ),
    );
  }
}

class GradientBtnWidget extends StatelessWidget {
  const GradientBtnWidget({
    Key? key,
    required this.width,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  final double width;
  final Widget child;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 48,
        decoration: BoxDecoration(
          gradient: kBtnLinearGradient,
          boxShadow: kBtnShadow,
          borderRadius: BorderRadius.circular(kBtnRadius),
        ),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}

class BtnTextWhiteWidget extends StatelessWidget {
  const BtnTextWhiteWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kBtnTextStyle.copyWith(
        color: Colors.white,
      ),
    );
  }
}

class WelcomeHeaderWidget extends StatelessWidget {
  const WelcomeHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/wel_bg.png'),
      ],
    );
  }
}
