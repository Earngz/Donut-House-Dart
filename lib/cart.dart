import 'package:snack/product.dart';

class Cart {
  final Product product;
  Cart({required this.product});
}
// Demo data for our cart

List<Cart> demoCart = [
  Cart(product: products[0]),
  Cart(product: products[1]),
  Cart(product: products[3]),
];