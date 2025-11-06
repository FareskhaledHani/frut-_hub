
class ItemModel {
  final String photo;
  final String title;
  final String subTitle;
  final double price;
  int count;

  ItemModel({
    required this.photo,
    required this.title,
    required this.subTitle,
    required this.price,
    this.count = 1,
  });
}