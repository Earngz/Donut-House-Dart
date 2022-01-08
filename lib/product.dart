class Product {
  final String image, title;
  final int price, id;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "ROSE",
      price: 25,
      image: 'assets/images/donut_1.png'),
  Product(
      id: 2,
      title: "RINGGY",
      price: 65,
      image: 'assets/images/donut4-removebg.png'),
  Product(
      id: 3,
      title: "BUN BUN",
      price: 25,
      image: 'assets/images/donut6-removebg.png'),
  Product(
      id: 4,
      title: "DARK",
      price: 35,
      image: 'assets/images/donut2-removebg.png'),
  Product(
      id: 5,
      title: "SUMMER",
      price: 70,
      image: 'assets/images/donut5-removebg.png'),
  Product(
      id: 6,
      title: "YUME",
      price: 40,
      image: 'assets/images/donut3-removebg.png'),
];
