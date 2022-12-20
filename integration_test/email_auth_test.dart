import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/main.dart' as app;
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('User performs email authentication flow', (tester) async {
    app.main();
    await tester.pumpAndSettle();
    await FirebaseAuth.instance.signOut();
    await tester.pumpAndSettle();

    await tester.enterText(find.widgetWithText(TextField, 'Email'), 'tester@gmail.com');
    await tester.enterText(find.widgetWithText(TextField, 'Password'), 'password');
    await tester.pump();
    await tester.tap(find.widgetWithText(OutlinedButton, 'Sign in'));
    await tester.pumpAndSettle();
    expect(find.text('Inbox'), findsOneWidget);
  });
}
