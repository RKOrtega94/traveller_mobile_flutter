import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
int selectedPage(SelectedPageRef ref) {
  return ref == null ? 0 : ref.selectedPage;
}
