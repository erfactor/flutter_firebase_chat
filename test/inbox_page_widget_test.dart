import 'package:firebase_chat/data/repository/rooms_repository.dart';
import 'package:firebase_chat/presentation/view/inbox/inbox_page.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:flutter_test/flutter_test.dart';

import 'util/rooms_repository_mock.dart';
import 'util/test_material_app.dart';

void main() {
  testWidgets('When adding a new room to $InboxPage Then a new $Text with this room\'s name can be found', (WidgetTester tester) async {
    final roomName = 'room';
    await tester.pumpWidget(TestMaterialApp(
      overrides: [
        roomsRepositoryProvider.overrideWithValue(RoomsRepositoryMock()),
      ],
      child: InboxPage(),
    ));
    await tester.pump();

    expect(find.text(roomName), findsNothing);
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), roomName);
    await tester.pump();

    await tester.tap(find.text('CREATE'));
    await tester.pumpAndSettle();

    expect(find.text(roomName), findsOneWidget);
  });
}
