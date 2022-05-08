import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/presentation/view/inbox/inbox_page.dart';
import 'package:firebase_chat/presentation/view/room/room_page.dart';
import 'package:firebase_chat/presentation/view/sign_in/sign_in_page.dart';
import 'package:firebase_chat/presentation/view/start/start_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String start = 'start';
  static const String signIn = 'sign_in';
  static const String inbox = 'inbox';
  static const String room = 'room';

  static PageRoute<Object> onGenerateRoute(RouteSettings settings) {
    try {
      final page = _parseRoute(name: Uri.parse(settings.name!).pathSegments[0], arguments: settings.arguments);
      return MaterialPageRoute<Object>(
        builder: (_) => SafeArea(child: page!),
        settings: settings,
      );
    } catch (error) {
      throw ArgumentError('Invalid route');
    }
  }

  static Widget? _parseRoute({required String name, required Object? arguments}) {
    switch (name) {
      case start:
        return const StartPage();
      case signIn:
        return const SignInPage();
      case inbox:
        return const InboxPage();
      case room:
        return RoomPage(arguments as Room);
      default:
        return null;
    }
  }
}
