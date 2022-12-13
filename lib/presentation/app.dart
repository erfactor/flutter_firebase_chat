import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/util/consts.dart';

final _globalNavigatorKey = GlobalKey<NavigatorState>();
NavigatorState get globalNavigator => _globalNavigatorKey.currentState!;

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: _App(),
    );
  }
}

class _App extends HookWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        return FirebaseAuth.instance
            .idTokenChanges()
            .listen(
              (user) async => globalNavigator.pushNamedAndRemoveUntil<void>(
                user == null ? Routes.signIn : Routes.inbox,
                (route) => false,
              ),
            )
            .cancel;
      },
      [],
    );

    return MaterialApp(
      navigatorKey: _globalNavigatorKey,
      initialRoute: Routes.start,
      onGenerateRoute: Routes.onGenerateRoute,
      navigatorObservers: [sl<FirebaseAnalyticsObserver>()],
      title: Consts.appName,
      theme: Styles.getThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
