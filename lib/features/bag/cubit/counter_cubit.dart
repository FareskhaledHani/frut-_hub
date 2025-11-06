import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/generated/assets.dart';

import '../model/item_model.dart';

class BagCubit extends Cubit<List<ItemModel>> {
  BagCubit()
      : super([
    ItemModel(count: 0,  price: 15, photo: Assets.bagShopBagShop, title: 'Big Burger Queso', subTitle: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius '),
    ItemModel(count: 0,  price: 10, photo: Assets.bagShopBigBurger, title: 'Big Burger Queso', subTitle: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius '),
    ItemModel(count: 0,  price: 5, photo: Assets.bagShopBagShop, title: 'Big Burger Queso', subTitle: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius '),

  ]);

  void increment(int index) {
    final newList = List<ItemModel>.from(state);
    newList[index].count++;
    emit(newList);
  }

  void decrement(int index) {
    final newList = List<ItemModel>.from(state);
    if (newList[index].count > 0) newList[index].count--;
    emit(newList);
  }

  double get totalPrice {
    double total = 0;
    for (var item in state) {
      total += item.price * item.count;
    }
    return total;
  }
}
