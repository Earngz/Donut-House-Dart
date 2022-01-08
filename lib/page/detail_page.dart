import 'package:flutter/material.dart';
import 'package:snack/product.dart';
import 'package:snack/theme/app_colors.dart';
import 'package:snack/theme/app_size.dart';
import 'package:snack/theme/app_style.dart';
import 'package:snack/widgets/detail_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: CartBtn(size: size),
      body: DatailBody(size: size, product: product),
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
