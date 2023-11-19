import 'package:traveller_mobile_flutter/domain/repositories/category_repository.dart';
import 'package:traveller_mobile_flutter/data/models/category.dart';

class GetAllCategoriesUseCase {
  final ICategoryRepository _categoryRepository;

  GetAllCategoriesUseCase(this._categoryRepository);

  Future<List<Category>> call() async {
    return await _categoryRepository.getCategories();
  }
}
