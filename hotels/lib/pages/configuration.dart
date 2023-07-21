class Products {
  late String image;
  late String dummyText;
  late int price;
  late double rate;
  late int id;
  Products(
      {required this.id,
      required this.image,
      required this.price,
      required this.dummyText,
      required this.rate});
}

List<Products> menus = [
  Products(
      id: 1,
      image: "assets/waaw.jpg",
      price: 500,
      dummyText: 'dummyText',
      rate: 4.9),
  Products(
      id: 2,
      image: "assets/fan.jpg",
      price: 500,
      dummyText: 'dummyText',
      rate: 4.9),
  Products(
      id: 3,
      image: "assets/nice.jpg",
      price: 500,
      dummyText: 'dummyText',
      rate: 4.9),
  Products(
      id: 4,
      image: "assets/fs.jpg",
      price: 500,
      dummyText: 'dummyText',
      rate: 4.9)
];
