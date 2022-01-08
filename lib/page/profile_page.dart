import 'package:flutter/material.dart';
import 'package:snack/theme/app_colors.dart';
import 'package:snack/widgets/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Info(
            image:
                'https://easyvdo.com/wp-content/uploads/2019/08/portrait-square-03.jpg',
            name: "Andy Junior",
            email: "AndyJ01@gmail.com",
          ),
          SizedBox(height: 20),
          ProfileMenuItem(
              title: 'Prosonal Information',
              press: () {},
              icon: Icons.security),
          ProfileMenuItem(
              title: 'Order History', press: () {}, icon: Icons.shopping_cart),
          ProfileMenuItem(
              title: 'Address', press: () {}, icon: Icons.location_on),
          ProfileMenuItem(title: 'Help', press: () {}, icon: Icons.help),
        ],
      ),
    );
  }
}
