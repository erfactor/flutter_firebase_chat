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
  routes: $appRoutes,
  initialLocation: const SplashRoute().location,
  observers: [FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)],
  navigatorKey: _globalNavigatorKey,
);

class _App extends HookWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    useEffect(
      () => auth.FirebaseAuth.instance.authStateChanges().listen((_) async => _router.go(const SplashRoute().location)).cancel,
      [],
    );

    return MaterialApp.router(
      routerConfig: _router,
      builder: (context, child) {
        return Container(
          alignment: Alignment.center,
          color: Theme.of(context).backgroundColor,
          child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 800), child: child),
        );
      },
      title: 'Firebase Chat',
      theme: buildTheme(Brightness.light),
      darkTheme: buildTheme(Brightness.dark),
      debugShowCheckedModeBanner: false,
    );
  }
}

ThemeData buildTheme(Brightness brightness) {
  const flexScheme = FlexScheme.espresso;
  final isLight = brightness == Brightness.light;
  final baseTheme = isLight ? FlexThemeData.light(scheme: flexScheme) : FlexThemeData.dark(scheme: flexScheme);

  return baseTheme.copyWith(
    scaffoldBackgroundColor: isLight ? const Color(0xFFFAFAFA) : const Color(0xFF121212),
    textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme).copyWith(
      button: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
    ),
  );
}
