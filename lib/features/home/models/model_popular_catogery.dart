import '../../../generated/assets.dart';

class PopularCategoryModel {
  final String title;
  final String description;
  final String image;
  final double price;


  const PopularCategoryModel({
    required this.title,
    required this.description,
    required this.image,
    required this.price,

  });


}



final List<PopularCategoryModel> popularCategories = [
   const PopularCategoryModel(
    title: 'Pizza Classica',
    description: 'Salsa clásica de la casa',
    image: Assets.imagesPizzaClassica,
    price: 12.00,
  ),
   const PopularCategoryModel(
    title: 'Tacos Deluxe',
    description: 'Con guacamole y limón',
     image: 'assets/images/hamburger.png',
    price: 9.50,
  ),
   const PopularCategoryModel(
    title: 'Burger Premium',
    description: 'Carne 100% Angus',
     image: Assets.imagesPizzaClassica,
    price: 15.00,
  ),
];