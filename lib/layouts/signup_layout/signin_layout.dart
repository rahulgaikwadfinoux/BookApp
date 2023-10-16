import 'package:bookapp/app/signin/responsivebodies/signup_desktopbody.dart';
import 'package:bookapp/app/signin/responsivebodies/signup_mobilebody.dart';
import 'package:bookapp/app/signin/responsivebodies/signup_tabletbody.dart';
import 'package:bookapp/layouts/custom_layoutbuilder.dart';
import 'package:flutter/material.dart';

class SignupLayout extends StatefulWidget {
  const SignupLayout({super.key});

  @override
  State<SignupLayout> createState() => _SignupLayoutState();
}

class _SignupLayoutState extends State<SignupLayout> {
  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      mobilebody: SignupMobileBody(),
      tabletbody: SignupTabletBody(),
      desktopbody: SignupDesktopBody(),
    );
  }
}
