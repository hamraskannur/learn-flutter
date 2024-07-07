import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoritesMealsProvider extends StateNotifier<List<Meal>> {
  FavoritesMealsProvider() : super([]);
  bool toggleMealFavoriteStatus(Meal meal) {
    final mealsIsFavorite = state.contains(meal);
    if (mealsIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoritesMealsProvider, List<Meal>>((ref) {
  return FavoritesMealsProvider();
});
