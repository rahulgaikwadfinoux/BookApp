import 'package:flutter/material.dart';

/// Arguments Optional
/// ///# Step 1
class NavigationUtil {
  static void navigateTo(BuildContext context, String routeName,
      {Object? arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static void navigateToReplacement(BuildContext context, String routeName,
      {Object? arguments}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
  }

  static void removeNamedUntil(BuildContext context, String routeName,
      {Object? arguments}) {
    Navigator.popUntil(context, ModalRoute.withName(routeName));
  }

  static void navigateToAndRemoveUntil(
      BuildContext context, String routeName, bool tf,
      {Object? arguments}) {
    Navigator.pushNamedAndRemoveUntil(
        context, routeName, (Route<dynamic> route) => tf,
        arguments: arguments);
  }

  static void navigateBack(BuildContext context, {Object? result}) {
    Navigator.pop(context, result);
  }
}
