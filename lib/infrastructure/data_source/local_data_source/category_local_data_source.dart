import 'package:traveller_mobile_flutter/domain/data_source/category_data_source.dart';
import 'package:traveller_mobile_flutter/infrastructure/static/categories_list.dart';

class CategoryLocalDataSource extends ICategoryDataSource {
  List<Map<String, dynamic>> categoryData = categories;

  @override
  Future<List<Map<String, dynamic>>> getCategories() async {
    return Future.value(categoryData);
  }
}
