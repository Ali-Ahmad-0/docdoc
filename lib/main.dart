import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/core/themes/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorsManager().mainColorBlue,
        scaffoldBackgroundColor: Color(0xffF7F7F7),
      ),
      routerConfig: AppRouter().router,
    ),
  );
}
