import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/data/repository/rooms_providers.dart';
import 'package:firebase_chat/presentation/view/inbox/inbox_page.dart';
import 'package:flutter_test/flutter_test.dart';

import 'util/test_material_app.dart';

void main() {
  testWidgets('$InboxPage with 1 room golden', (WidgetTester tester) async {
    await tester.pumpWidget(TestMaterialApp(
      overrides: [
        roomsProvider.overrideWith((ref) => Stream.value([Room(name: 'room')]))
      ],
      child: InboxPage(),
    ));

    await tester.pump();
    await expectLater(find.byType(InboxPage), matchesGoldenFile('goldens/inbox_page.png'));
  });
}
