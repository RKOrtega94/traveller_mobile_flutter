import 'package:traveller_mobile_flutter/data/models/category.dart';

abstract class ICategoryRepository {
  Future<List<Category>> getCategories();
}
