import 'package:traveller_mobile_flutter/domain/data_source/category_data_source.dart';
import 'package:traveller_mobile_flutter/data/static/categories_list.dart';

class CategoryLocalDataSource extends ICategoryDataSource {
  List<Map<String, dynamic>> categoryData = categories;

  @override
  Future<List<Map<String, dynamic>>> getCategories() async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value(categoryData);
  }
}
