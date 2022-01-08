import 'package:flutter/material.dart';
import 'package:snack/page/order_page.dart';
import 'package:snack/page/profile_page.dart';
import 'package:snack/theme/app_colors.dart';
import 'package:snack/widgets/home_widget.dart';

//appbar
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 1;
  List<Widget> pagelist = <Widget>[ProfileScreen(), HomeBody(), CartSelect()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: pagelist[pageIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      iconSize: 30,
      backgroundColor: Colors.white,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kTextColor,
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      currentIndex: pageIndex,
      onTap: (value) {
        setState(() {
          pageIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        alignment: Alignment.bottomRight,
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }
}
