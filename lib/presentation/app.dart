import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/util/custom_provider_observer.dart';
import 'package:go_router/go_router.dart';

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

final _globalNavigatorKey = GlobalKey<NavigatorState>();
NavigatorState get globalNavigator => _globalNavigatorKey.currentState!;

final _router = GoRouter(
  initialLocation: SplashRoute().location,
  navigatorKey: _globalNavigatorKey,
  routes: $appRoutes,
  observers: [FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)],
);

class _App extends HookWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    useEffect(
      () => auth.FirebaseAuth.instance.authStateChanges().listen((_) async => _router.go(SplashRoute().location)).cancel,
      [],
    );

    return MaterialApp.router(
      title: 'Firebase Chat',
      routerConfig: _router,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
