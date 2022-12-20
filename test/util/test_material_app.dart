import 'package:firebase_chat/presentation/app.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class TestMaterialApp extends StatelessWidget {
  const TestMaterialApp({this.overrides, required this.child, super.key});
  final List<Override>? overrides;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [...?overrides],
      child: Consumer(
        builder: (context, ref, _) {
          return MaterialApp(home: child, theme: buildTheme(Brightness.light), debugShowCheckedModeBanner: false);
        },
      ),
    );
  }
}
