import 'package:traveller_mobile_flutter/domain/data_source/category_data_source.dart';
import 'package:traveller_mobile_flutter/domain/repositories/category_repository.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/category.dart';

class CategoryRepository extends ICategoryRepository {
  final ICategoryDataSource dataSource;

  CategoryRepository(this.dataSource);

  @override
  Future<List<Category>> getCategories() {
    try {
      return dataSource.getCategories().then(
            (value) => value
                .map(
                  (e) => Category.fromJson(e),
                )
                .toList(),
          );
    } catch (e) {
      rethrow;
    }
  }
}
