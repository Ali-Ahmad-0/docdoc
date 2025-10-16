import 'package:flutter/widgets.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? argument}) =>
      Navigator.of(this).pushNamed(routeName, arguments: argument);
  Future<dynamic> pushReplacementNamed(String routeName, {Object? argument}) =>
      Navigator.of(this).pushNamed(routeName, arguments: argument);
  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? argument,
  }) => Navigator.of(this).pushNamed(routeName, arguments: argument);

  void pop() => Navigator.of(this).pop();
}
