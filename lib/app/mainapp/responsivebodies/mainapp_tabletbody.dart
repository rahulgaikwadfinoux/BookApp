import 'package:bookapp/app/mainapp/widget/custom_drawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainAppTabletBody extends StatefulWidget {
  const MainAppTabletBody({super.key});

  @override
  State<MainAppTabletBody> createState() => _MainAppTabletBodyState();
}

class _MainAppTabletBodyState extends State<MainAppTabletBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: CustomDrawer(),
      ),
    );
  }
}
