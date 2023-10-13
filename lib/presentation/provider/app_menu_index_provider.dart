import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_menu_index_provider.g.dart';

@riverpod
class MenuIndex extends _$MenuIndex {
  @override
  int build() => 0;

  void setIndex(int index) {
    state = index;
  }
}