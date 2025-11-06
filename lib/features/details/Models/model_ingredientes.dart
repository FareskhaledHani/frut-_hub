

import 'package:fruithub/generated/assets.dart';

class IngredintesCategoryModel {
  final String title;
  final String image;


  const IngredintesCategoryModel({
    required this.title,
    required this.image,

  });
}


final List<IngredintesCategoryModel> ingredintesCategories = [
  const IngredintesCategoryModel(
    title: 'Arrachera',
    image: Assets.detailsScreenArrachera,

  ),
  const IngredintesCategoryModel(
    title: 'Pan ajonjoli',
    image: Assets.detailsScreenBread,

  ),
  const IngredintesCategoryModel(
    title: 'Lechuga',
    image: Assets.detailsScreenLechuga,

  ),
  const IngredintesCategoryModel(
    title: 'Cebolla',
    image: Assets.detailsScreenCebolla,

  ),

];
