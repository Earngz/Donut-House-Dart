import 'package:flutter/material.dart';
import 'package:snack/cart.dart';
import 'package:snack/product.dart';
import 'package:snack/theme/app_size.dart';
import 'package:snack/widgets/order_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: CartBody(product: products[0]),
      bottomNavigationBar: TotalCartBtm(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class CartBody extends StatefulWidget {
  const CartBody({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  _CartBodyState createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (BuildContext context, index) => Dismissible(
              key: Key(demoCart[0].product.id.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Spacer(),
                    Icon(Icons.delete, color: Colors.white, size: 30),
                  ],
                ),
              ),
              confirmDismiss: (DismissDirection direction) async {
                return await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Delete Confirmation",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      content: const Text(
                          "Are you sure you want to delete this item?"),
                      actions: [
                        // ignore: deprecated_member_use
                        FlatButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: const Text("Delete")),
                        // ignore: deprecated_member_use
                        FlatButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: const Text("Cancel"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: FullCartCard(cart: demoCart[index]),
            ));
  }
}

class CartSelect extends StatelessWidget {
  const CartSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartBody(product: products[0]),
      bottomNavigationBar: TotalCartBtm(),
    );
  }
}
