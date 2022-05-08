import 'dart:io';

import 'package:firebase_chat/util/extension/cast.dart';
import 'package:dio/dio.dart';

String errorToString(Object errorObject) {
  final dioException = errorObject.cast<DioError>();
  if (dioException != null) {
    if (dioException.error is SocketException) {
      return 'No network connection.';
    }
    return dioException.message;
  }

  final error = errorObject.cast<Error>();
  if (error != null) {
    return Error.safeToString(error);
  }
  return errorObject.toString();
}
