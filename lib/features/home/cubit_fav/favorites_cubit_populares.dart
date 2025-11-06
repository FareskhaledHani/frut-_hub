import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/model_popular_catogery.dart';

class FavoriteCubit extends Cubit<List<PopularCategoryModel>> {
  FavoriteCubit() : super([]);

  void toggleFavorite(PopularCategoryModel item) {
    if (state.contains(item)) {
      emit(List.from(state)..remove(item));
    } else {
      emit(List.from(state)..add(item));
    }
  }

  bool isFavorite(PopularCategoryModel item) => state.contains(item);
}