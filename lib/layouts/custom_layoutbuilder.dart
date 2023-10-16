import 'package:bookapp/utils/breakpoint.dart';
import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatefulWidget {
  final Widget mobilebody;
  final Widget tabletbody;
  final Widget desktopbody;
  const CustomLayoutBuilder(
      {super.key,
      required this.mobilebody,
      required this.tabletbody,
      required this.desktopbody});

  @override
  State<CustomLayoutBuilder> createState() => _CustomLayoutBuilderState();
}

class _CustomLayoutBuilderState extends State<CustomLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < breakpoint['sm']!.toDouble()) {
          return widget.mobilebody;
        } else {
          if (constraints.maxWidth < breakpoint['lg']!.toDouble()) {
            return widget.tabletbody;
          } else {
            return widget.desktopbody;
          }
        }
      },
    );
  }
}
