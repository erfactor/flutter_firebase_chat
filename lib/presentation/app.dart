import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/util/custom_provider_observer.dart';

final _globalNavigatorKey = GlobalKey<NavigatorState>();
NavigatorState get globalNavigator => _globalNavigatorKey.currentState!;

class App extends HookWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    final providerObserver = useMemoized(() => CustomProviderObserver(loggingEnabled: false));

    return ProviderScope(
      observers: [providerObserver],
      child: const _App(),
    );
  }
}

class _App extends HookWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    useEffect(
      () => FirebaseAuth.instance
          .idTokenChanges()
          .listen(
            (user) async => globalNavigator.pushNamedAndRemoveUntil<void>(
              user == null ? Routes.signIn : Routes.inbox,
              (route) => false,
            ),
          )
          .cancel,
      [],
    );
    final firebaseAnalyticsObserver = useMemoized(() => FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance));

    return MaterialApp(
      navigatorKey: _globalNavigatorKey,
      initialRoute: Routes.start,
      onGenerateRoute: Routes.onGenerateRoute,
      navigatorObservers: [firebaseAnalyticsObserver],
      title: 'Firebase Chat',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
