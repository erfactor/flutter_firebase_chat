import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/presentation/view/auth/profile_page.dart';
import 'package:firebase_chat/presentation/view/auth/sign_in_page.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<SplashRoute>(path: '/', routes: [
  TypedGoRoute<SignInRoute>(path: 'login'),
  TypedGoRoute<ProfileRoute>(path: 'profile'),
])
@immutable
class SplashRoute extends GoRouteData {
  @override
  FutureOr<String> redirect() {
    return FirebaseAuth.instance.currentUser == null ? SignInRoute().location : ProfileRoute().location;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}

@immutable
class SignInRoute extends GoRouteData {
  const SignInRoute();

  @override
  Widget build(BuildContext context) {
    return SignInPage();
  }
}

@immutable
class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Widget build(BuildContext context) {
    return ProfilePage();
  }
}
