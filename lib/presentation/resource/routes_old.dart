// ignore_for_file: cast_nullable_to_non_nullable

import 'package:firebase_chat/data/model/room.dart';
import 'package:firebase_chat/presentation/view/inbox/inbox_page.dart';
import 'package:firebase_chat/presentation/view/room/room_page.dart';
import 'package:firebase_chat/presentation/view/sign_in/sign_in_page.dart';
import 'package:firebase_chat/presentation/view/start/start_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String start = 'start';
  static const String signIn = 'signIn';
  static const String inbox = 'inbox';
  static const String room = 'room';

  static PageRoute<Object> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<Object>(
      builder: (_) => SafeArea(child: _parseRoute(name: Uri.parse(settings.name!).pathSegments.first, arguments: settings.arguments)),
      settings: settings,
    );
  }

  static Widget _parseRoute({required String name, required Object? arguments}) {
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
        throw ArgumentError('Invalid route');
    }
  }
}
