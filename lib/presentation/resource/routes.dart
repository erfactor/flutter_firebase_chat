import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/presentation/view/auth/profile_page.dart';
import 'package:firebase_chat/presentation/view/auth/sign_in_page.dart';
import 'package:firebase_chat/presentation/view/room/room_page.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:go_router/go_router.dart';

import '../../data/model/room.dart';
import '../view/inbox/inbox_page.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/', routes: [
  TypedGoRoute<SignInRoute>(path: 'login'),
  TypedGoRoute<ProfileRoute>(path: 'profile'),
  TypedGoRoute<SplashRoute>(path: 'splash'),
  TypedGoRoute<RoomRoute>(path: 'room/:id'),
])
@immutable
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) {
    return InboxPage();
  }
}

@immutable
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  FutureOr<String> redirect() {
    return FirebaseAuth.instance.currentUser == null ? SignInRoute().location : HomeRoute().location;
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

@immutable
class RoomRoute extends GoRouteData {
  const RoomRoute({required this.id, this.name});
  final String id;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return RoomPage(Room(id: id, name: name ?? ''));
  }
}
