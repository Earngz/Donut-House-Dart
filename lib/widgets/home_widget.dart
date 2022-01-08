import 'package:flutter/material.dart';
import 'package:snack/page/detail_page.dart';
import 'package:snack/page/menu_page.dart';
import 'package:snack/product.dart';
import 'package:snack/theme/app_colors.dart';
import 'package:snack/theme/app_size.dart';
import 'package:snack/theme/app_style.dart';

//all home body
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearch(size: size),
          TitleWithMore(
              title: "New Available",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              }),
          FullNewAvaiWidget(),
          SizedBox(height: kDefaultPadding + 10),
          TitleWithMore(title: "Promotion", press: () {}),
          PromoCardAll(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 1.5),
      height: size.height * 0.15,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            height: size.height * 0.15 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kBtnRadius),
                bottomRight: Radius.circular(kBtnRadius),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hello, Andy!',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(width: 165),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: kBtnShadow,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://easyvdo.com/wp-content/uploads/2019/08/portrait-square-03.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: kBtnShadow,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(0.8),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: const Icon(
                    Icons.search,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//new avaliable
class FullNewAvaiWidget extends StatelessWidget {
  const FullNewAvaiWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: kDefaultPadding),
            NewDonutCard(
              product: products[0],
              text: "ROSE",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(product: products[0])),
                );
              },
            ),
            SizedBox(width: kDefaultPadding),
            NewDonutCard(
              product: products[1],
              text: "RINGGY",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(product: products[1])),
                );
              },
            ),
            SizedBox(width: kDefaultPadding),
            NewDonutCard(
              product: products[2],
              text: "BUNBUN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(product: products[2])),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

//new donut menu decro
class NewDonutCard extends StatelessWidget {
  const NewDonutCard({
    Key? key,
    required this.text,
    this.press,
    required this.product,
  }) : super(key: key);

  final String text;
  final press;
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      height: size.height * 0.25,
      decoration: BoxDecoration(
        color: AppColors.yellow,
        borderRadius: BorderRadius.circular(kBtnRadius),
        boxShadow: kCardShadow,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(product.image),
              backgroundColor: AppColors.yellow,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: ListTile(
              leading: PrimaryText(text: text, fontWeight: FontWeight.bold),
              trailing: PrimaryText(
                text: "\฿${product.price}",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//btn more
class TitleWithMore extends StatelessWidget {
  const TitleWithMore({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleBodyTop(text: title),
          Spacer(),
          // ignore: deprecated_member_use
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: press,
            child: Text(
              'More',
              style: TextStyle(fontSize: kBtnTextSize - 2, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

//title new availiable
class TitleBodyTop extends StatelessWidget {
  const TitleBodyTop({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Text(
            text,
            style: kTextHeadStyle,
          ),
        ],
      ),
    );
  }
}

//all promotion ic card
class PromoCardAll extends StatelessWidget {
  const PromoCardAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PromoCard(
            image: 'assets/images/promo2.png',
            press: () {},
          ),
          PromoCard(
            image: 'assets/images/promo1.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

//promotion pic
class PromoCard extends StatelessWidget {
  const PromoCard({
    Key? key,
    required this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBtnRadius),
          image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image)),
        ),
      ),
    );
  }
}
