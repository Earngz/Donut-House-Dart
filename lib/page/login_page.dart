import 'package:flutter/material.dart';
import 'package:snack/theme/app_size.dart';
import 'package:snack/theme/app_style.dart';
import 'package:snack/widgets/login_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset('assets/images/test2.png'),
          Column(
            children: [
              SizedBox(height: 400),
              LoginBodyWidget(),
            ],
          ),
          Positioned(
            top: 64,
            left: 28,
            child: BackIcon(),
          )
        ],
      ),
    );
  }
}

class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      height: 400,
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Login', style: kTitleTextStyle),
          SizedBox(height: 30),
          LoginInput(
            hintText: 'Email',
            prefixIcon: 'assets/icons/icon_email.png',
          ),
          SizedBox(height: 18),
          LoginInput(
            hintText: 'Password',
            prefixIcon: 'assets/icons/icon_pwd.png',
            obsecureText: true,
          ),
          SizedBox(height: 35),
          LoginBtnIconWidget(),
        ],
      ),
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
