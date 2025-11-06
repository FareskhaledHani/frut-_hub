import 'package:flutter/material.dart';
import 'package:fruithub/rest_app.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp( RestApp(
    appRouter: AppRouter(),
  ));
}
