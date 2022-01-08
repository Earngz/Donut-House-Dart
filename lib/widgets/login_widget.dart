import 'package:flutter/material.dart';
import 'package:snack/page/home_page.dart';
import 'package:snack/theme/app_colors.dart';
import 'package:snack/theme/app_size.dart';
import 'package:snack/theme/app_style.dart';
import 'package:snack/widgets/welcome_widget.dart';

class LoginBtnIconWidget extends StatelessWidget {
  const LoginBtnIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        GradientBtnWidget(
          width: 160,
          child: Row(
            children: [
              SizedBox(width: 35),
              BtnTextWhiteWidget(text: 'Login'),
              Spacer(),
              Image.asset(
                'assets/icons/icon_arrow_right.png',
                width: kIconSize,
                height: kIconSize,
              ),
              SizedBox(width: 24),
            ],
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return HomeScreen();
              },
            ));
          },
        )
      ],
    );
  }
}

class LoginInput extends StatelessWidget {
  const LoginInput({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    this.obsecureText = false,
  }) : super(key: key);
  final String hintText;
  final String prefixIcon;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: kInputBorder,
        focusedBorder: kInputBorder,
        enabledBorder: kInputBorder,
        prefixIcon: Container(
          width: kIconBoxSize,
          height: kIconBoxSize,
          alignment: Alignment.center,
          child: Image.asset(
            prefixIcon,
            width: kIconSize,
            height: kIconSize,
          ),
        ),
      ),
      obscureText: obsecureText,
      style: kBodyTextStyle.copyWith(
        fontSize: 17,
      ),
    );
  }
}

class BackIcon extends StatelessWidget {
  const BackIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: (AppColors.white),
          border: Border.all(color: AppColors.lightGray),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(Icons.chevron_left_rounded),
      ),
    );
  }
}
