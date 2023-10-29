import 'package:bookapp/constants/route_constatnts.dart';
import 'package:bookapp/homepage.dart';
import 'package:bookapp/layouts/login_layout/login_layout.dart';
import 'package:bookapp/layouts/mainapp_layout/mainapp_layout.dart';
import 'package:bookapp/layouts/signup_layout/signin_layout.dart';
import 'package:flutter/material.dart';

class Routes {
  // static Route? onGeneratedRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case login_route:
  //       return MaterialPageRoute(builder: (context) => const LoginLayout());

  //     case signup_route:
  //       return MaterialPageRoute(builder: (context) => const SignupLayout());

  //     case app_route:
  //       return MaterialPageRoute(builder: (context) => const HomePage());

  //     default:
  //       return MaterialPageRoute(builder: (context) => const HomePage());
  //   }
  // }
  static Map<String, Widget Function(BuildContext)> routes =
      <String, Widget Function(BuildContext)>{
    login_route: (context) => const LoginLayout(),
    signup_route: (context) => const SignupLayout(),
    app_route: (context) => const MainAppLayout(),
  };
}
