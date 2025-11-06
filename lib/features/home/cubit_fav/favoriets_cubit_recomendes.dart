import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/model_recomend_catogery.dart';

class FavoriteCubitRecomendes extends Cubit<List<RecomendesCategoryModel>> {
  FavoriteCubitRecomendes() : super([]);

  void toggleFavorite(RecomendesCategoryModel item) {
    if (state.contains(item)) {
      emit(List.from(state)..remove(item));
    } else {
      emit(List.from(state)..add(item));
    }
  }

  bool isFavorite(RecomendesCategoryModel itemRec) => state.contains(itemRec);
}