import 'package:docdoc/app.dart';
import 'package:docdoc/core/DI/dependency_injection.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  setUpGetIt();
  runApp(MyApp(appRouter: AppRouter()));
}
