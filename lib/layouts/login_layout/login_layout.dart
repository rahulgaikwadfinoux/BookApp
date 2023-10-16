import 'package:bookapp/app/login/responsivebodies/login_desktopbody.dart';
import 'package:bookapp/app/login/responsivebodies/login_mobilebody.dart';
import 'package:bookapp/app/login/responsivebodies/login_tabletbody.dart';
import 'package:bookapp/layouts/custom_layoutbuilder.dart';
import 'package:flutter/material.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({super.key});

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      mobilebody: LoginMobileBody(),
      tabletbody: LoginTabletBody(),
      desktopbody: LoginDesktopBody(),
    );
  }
}
