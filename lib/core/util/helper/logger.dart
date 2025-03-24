import 'dart:convert';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class Logger {
  static const _tag = "log";

  static void log(Type runtimeType, String message, {String tag = _tag}) {
    developer.log(
      "$runtimeType,time:${DateTime.now()} $message",
      name: tag,
    );
  }

  static void printInView(Type runtimeType, String message,
      {String tag = _tag}) {
    debugPrint("$runtimeType,time:${DateTime.now()} $message");
  }

  static void error(
    Type runtimeType,
    String message, {
    String tag = _tag,
    Object? error,
  }) {
    developer.log(
      "$runtimeType,time:${DateTime.now()} $message",
      name: tag,
      error: error,
    );
  }

  static void jsonLog(Type runtimeType, dynamic json,
      {String name = "JsonPrint"}) {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    String prettyprint = encoder.convert(json);
    prettyprint
        .split('\n')
        .forEach((element) => developer.log(element, name: name));
  }
}
