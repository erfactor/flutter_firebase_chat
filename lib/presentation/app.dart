import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/util/consts.dart';
import 'package:oktoast/oktoast.dart';

final _globalNavigatorKey = GlobalKey<NavigatorState>();
NavigatorState get globalNavigator => _globalNavigatorKey.currentState!;

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: OKToast(
        child: _App(),
      ),
    );
  }
}

class _App extends HookWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      final authSubscription = FirebaseAuth.instance.idTokenChanges().listen((user) {
        globalNavigator.pushNamedAndRemoveUntil(user == null ? Routes.signIn : Routes.inbox, (route) => false);
      });
      return authSubscription.cancel;
    });
    return MaterialApp(
      navigatorKey: _globalNavigatorKey,
      title: Consts.appName,
      theme: Styles.getThemeData(context: context),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.start,
      navigatorObservers: [sl<FirebaseAnalyticsObserver>()],
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
