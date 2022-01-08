import 'package:flutter/material.dart';
import 'package:snack/page/order_page.dart';
import 'package:snack/product.dart';
import 'package:snack/theme/app_colors.dart';
import 'package:snack/theme/app_size.dart';
import 'package:snack/theme/app_style.dart';

class CartBtn extends StatelessWidget {
  const CartBtn({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: size.width - 40, minHeight: 54),
      child: ElevatedButton(
        onPressed: () => {
          {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return CartScreen();
              },
            )),
          },
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryText(
              text: 'Add to cart  ',
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
            Icon(Icons.shopping_cart_outlined),
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: kBtnColorEnd,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kBtnRadius))),
      ),
    );
  }
}

class DatailBody extends StatelessWidget {
  const DatailBody({
    Key? key,
    required this.size,
    required this.product,
  }) : super(key: key);

  final Size size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: kDefaultPadding)),
              PrimaryText(
                text: product.title,
                size: 48,
                fontWeight: FontWeight.w900,
                color: kTextColor,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  PrimaryText(
                    text: '฿${product.price}',
                    size: 40,
                    fontWeight: FontWeight.w800,
                    color: kPrimaryColor,
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: size.height * 0.6,
                width: size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(color: kBgColor, blurRadius: 70),
                  ],
                ),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image, fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding - 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => {Navigator.pop(context)},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.lightGray),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.chevron_left_rounded),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: kBtnShadow,
              color: AppColors.primary,
            ),
            child: Icon(
              Icons.favorite,
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
