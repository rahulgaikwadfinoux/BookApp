import 'package:bookapp/preferences/user_preferences.dart';
import 'package:bookapp/theme/color_schemes.dart';
import 'package:bookapp/theme/theme_provider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomPlugin extends StatelessWidget {
  const CustomPlugin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToolPanelSection(
      title: 'Custom',
      children: [
        ListTile(
          title: const Text('Seitch to black'),
          onTap: () async {},
        )
      ],
    );
  }
}
