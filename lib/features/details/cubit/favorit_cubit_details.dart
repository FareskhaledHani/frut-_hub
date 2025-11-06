import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteCubit extends Cubit<bool> {
  FavoriteCubit() : super(false); // الحالة المبدئية مش favorite

  void toggleFavorite() {
    emit(!state); // يقلب الحالة العكس
  }
}
