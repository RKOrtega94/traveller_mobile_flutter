import 'package:traveller_mobile_flutter/infrastructure/models/category.dart';

abstract class ICategoryRepository {
  Future<List<Category>> getCategories();
}
