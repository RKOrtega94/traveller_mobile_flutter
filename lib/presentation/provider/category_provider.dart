import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:traveller_mobile_flutter/infrastructure/data_source/local_data_source/category_local_data_source.dart';
import 'package:traveller_mobile_flutter/infrastructure/models/category.dart';
import 'package:traveller_mobile_flutter/infrastructure/repositories/category_repository.dart';
import 'package:traveller_mobile_flutter/infrastructure/use_cases/category/get_all_use_case.dart';

part 'category_provider.g.dart';

@riverpod
Future<List<Category>> categories(CategoriesRef ref) async {
  final GetAllCategoriesUseCase getAll = GetAllCategoriesUseCase(
    CategoryRepository(
      CategoryLocalDataSource(),
    ),
  );

  return await getAll.call();
}
