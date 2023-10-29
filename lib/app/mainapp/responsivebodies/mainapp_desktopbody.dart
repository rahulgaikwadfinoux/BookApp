// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookapp/app/mainapp/widget/custom_drawer.dart';
import 'package:bookapp/app/mainapp/widget/drawertile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainAppDesktopBody extends StatefulWidget {
  const MainAppDesktopBody({super.key});

  @override
  State<MainAppDesktopBody> createState() => _MainAppDesktopBodyState();
}

class _MainAppDesktopBodyState extends State<MainAppDesktopBody> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      children: [
        Container(
          width: 250,
          height: double.maxFinite,
          color: theme.colorScheme.secondaryContainer,
          child: CustomDrawer(),
        ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(),
            // drawer: Drawer(),
          ),
        ),
      ],
    );
  }
}
