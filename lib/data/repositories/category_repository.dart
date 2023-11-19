import 'package:flutter/material.dart';
import 'package:traveller_mobile_flutter/domain/data_source/category_data_source.dart';
import 'package:traveller_mobile_flutter/domain/repositories/category_repository.dart';
import 'package:traveller_mobile_flutter/data/models/category.dart';

class CategoryRepository extends ICategoryRepository {
  final ICategoryDataSource dataSource;

  CategoryRepository(this.dataSource);

  @override
  Future<List<Category>> getCategories() {
    try {
      return dataSource.getCategories().then(
            (value) => value.map(
              (e) {
                debugPrint(e['name']);
                return Category.fromJson(e);
              },
            ).toList(),
          );
    } catch (e) {
      rethrow;
    }
  }
}
