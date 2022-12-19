import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/util/custom_provider_observer.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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

    final flexScheme = FlexScheme.espresso;
    var textTheme = GoogleFonts.poppinsTextTheme().copyWith(
      button: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
    );
    return MaterialApp.router(
      title: 'Firebase Chat',
      routerConfig: _router,
      theme: FlexThemeData.light(scheme: flexScheme, textTheme: textTheme),
      darkTheme: FlexThemeData.dark(scheme: flexScheme, textTheme: textTheme),
      debugShowCheckedModeBanner: false,
    );
  }
}
