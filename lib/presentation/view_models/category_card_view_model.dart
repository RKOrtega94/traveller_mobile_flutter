import 'package:traveller_mobile_flutter/infrastructure/models/category.dart';

class CategoryCardViewModel {
  final Category category;
  final double width;
  final double height;
  final Function onTap;

  CategoryCardViewModel({
    required this.category,
    this.width = 120,
    this.height = 120 / 2.5,
    required this.onTap,
  });
}
