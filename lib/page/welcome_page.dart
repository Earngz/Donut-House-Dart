import 'package:flutter/material.dart';
import 'package:snack/page/login_page.dart';
import 'package:snack/theme/app_colors.dart';
import 'package:snack/widgets/welcome_widget.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Column(
        children: [
          WelcomeHeaderWidget(),
          GradientBtnWidget(
            width: 208,
            onTap: () {},
            child: BtnTextWhiteWidget(text: 
            'Sing up'
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            child: LoginBtnWidget(),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return LoginPage();
                },
              ));
            },
          ),
          SizedBox(height: 18),
          Text(
            'Forgot Password?',
            style: TextStyle(
              fontSize: 15,
              color: kTextColor,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Spacer(),
              LineWidget(),
              LoginTypeIconWidget(icon: 'assets/icons/logo_ins.png'),
              LoginTypeIconWidget(icon: 'assets/icons/logo_fb.png'),
              LoginTypeIconWidget(icon: 'assets/icons/logo_twitter.png'),
              LineWidget(),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
