import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:traveller_mobile_flutter/src/app.dart';

void main() {
  testWidgets('Test init app', (WidgetTester test) async {
    await test.pumpWidget(const ProviderScope(child: MyApp()));

    expect(find.text('Travellers'), findsOneWidget);
  });
}
