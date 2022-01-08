import 'package:flutter/material.dart';
import 'package:snack/cart.dart';
import 'package:snack/product.dart';
import 'package:snack/theme/app_colors.dart';
import 'package:snack/theme/app_size.dart';
import 'package:snack/theme/app_style.dart';

class FullCartCard extends StatelessWidget {
  const FullCartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(kBtnRadius),
            boxShadow: [
              BoxShadow(
                color: AppColors.lightGray,
                offset: Offset(0, 2),
                blurRadius: 10,
              )
            ]),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Row(
              children: [
                PicCart(image: cart.product.image),
                AllDetailCart(
                  text: cart.product.title,
                  product: cart.product,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PicCart extends StatelessWidget {
  const PicCart({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 100,
      height: 94,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kBtnRadius),
          bottomLeft: Radius.circular(kBtnRadius),
        ),
        color: AppColors.lighterYellow,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Image(
          width: 200,
          height: 200,
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AllDetailCart extends StatelessWidget {
  const AllDetailCart({
    Key? key,
    required this.text,
    required this.product,
  }) : super(key: key);

  final String text;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 140,
          child: Padding(
            padding: EdgeInsets.only(left: 4, top: 20),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        PriceWithIcon(product: product),
      ],
    );
  }
}

class PriceWithIcon extends StatelessWidget {
  const PriceWithIcon({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 140,
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  '฿${product.price}',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPadding, top: kDefaultPadding - 10),
          child: Row(
            children: [
              Container(
                height: 23,
                width: 23,
                decoration: BoxDecoration(
                  color: kBtnColorEnd,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child:
                        Icon(Icons.remove, color: AppColors.white, size: 17)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  '1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 23,
                width: 23,
                decoration: BoxDecoration(
                    color: kBtnColorEnd,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(Icons.add, color: AppColors.white, size: 17),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TotalCartBtm extends StatelessWidget {
  const TotalCartBtm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: (kBtnShadow),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: ListTile(
                title: Text(
                  'Total',
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Text(
                  '฿ 125',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Expanded(
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text(
                  'Check Out',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColors.white),
                ),
                color: kPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
