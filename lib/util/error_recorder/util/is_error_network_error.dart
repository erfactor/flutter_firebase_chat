import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_chat/util/extension/cast.dart';

bool isErrorNetworkError(Object? error) {
  final dioError = error.cast<DioError>();
  if (dioError != null) {
    if (dioError.error is SocketException) {
      return true;
    }
  }

  return false;
}
