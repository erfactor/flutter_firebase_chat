import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

void toast(String message) {
  showToast(
    message,
    duration: 5.seconds,
    position: ToastPosition.bottom,
    textPadding: const EdgeInsets.all(12),
    backgroundColor: const Color(0xFF222222),
    textStyle: const TextStyle(fontWeight: FontWeight.w500),
  );
}
