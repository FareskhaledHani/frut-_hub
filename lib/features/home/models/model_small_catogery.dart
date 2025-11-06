
import 'dart:ui';

class SmallCategoryModel {
  final String title;
  final String image;
  final Color color;

  const SmallCategoryModel({
    required this.title,
    required this.image,
    required this.color,
  });
}


final List<SmallCategoryModel> smallCategories = [
  const SmallCategoryModel(
      title: 'Tacos',
    image: 'assets/images/tacos.png',
    color: Color(0xFFD0E6A5),
  ),
  const SmallCategoryModel(
    title: 'Frias',
    image: 'assets/images/frias.png',
    color: Color(0xFF86E3CE),
  ),
  const SmallCategoryModel(
    title: 'Burger',
    image: 'assets/images/Burger.png',
    color: Color(0xFFFFDD95),
  ),
  const SmallCategoryModel(
    title: 'Pizza',
    image: 'assets/images/bizza.png',
    color: Color(0xFFFFACAC),
  ),
  const SmallCategoryModel(
    title: 'Burrito',
    image: 'assets/images/burrito.png',
    color: Color(0xFFCCAAD9),
  ),
];
