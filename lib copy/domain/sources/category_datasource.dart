import 'package:traveller_mobile_flutter/domain/model/category.dart';

/// Category data source
///
/// This class is an abstract class that defines the methods that must be implemented by the data source.
abstract class CategoryDataSource {
  /// Get categories
  ///
  /// Return a list of [Category] objects
  Future<List<Category>> getCategories();

  /// Get category by id
  ///
  /// [id]: Category id
  ///
  /// Return a [Category] object
  Future<Category> getCategoryById(int id);
}
