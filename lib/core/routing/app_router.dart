import 'package:chatting_app/core/routing/routes.dart';
import 'package:chatting_app/features/auth/login/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppRouter {
  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return null;
    }
  }
}
