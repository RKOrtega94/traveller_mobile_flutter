import 'package:traveller_mobile_flutter/infrastructure/models/category.dart';

class CategoryCardViewModel {
  final Category category;
  final Function onTap;

  CategoryCardViewModel({
    required this.category,
    required this.onTap,
  });
}
