import 'package:bookapp/app/login/responsivebodies/login_desktopbody.dart';
import 'package:bookapp/app/login/responsivebodies/login_mobilebody.dart';
import 'package:bookapp/app/login/responsivebodies/login_tabletbody.dart';
import 'package:bookapp/app/mainapp/responsivebodies/mainapp_desktopbody.dart';
import 'package:bookapp/app/mainapp/responsivebodies/mainapp_mobilebody.dart';
import 'package:bookapp/app/mainapp/responsivebodies/mainapp_tabletbody.dart';
import 'package:bookapp/layouts/custom_layoutbuilder.dart';
import 'package:flutter/material.dart';

class MainAppLayout extends StatefulWidget {
  const MainAppLayout({super.key});

  @override
  State<MainAppLayout> createState() => _MainAppLayoutState();
}

class _MainAppLayoutState extends State<MainAppLayout> {
  @override
  Widget build(BuildContext context) {
    return const CustomLayoutBuilder(
      mobilebody: MainAppMobileBody(),
      tabletbody: MainAppTabletBody(),
      desktopbody: MainAppDesktopBody(),
    );
  }
}
