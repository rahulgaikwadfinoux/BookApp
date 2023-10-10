import 'package:bookapp/theme/color_provider.dart';
import 'package:bookapp/theme/color_schemes.dart';
import 'package:bookapp/theme/contrast_provider.dart';
import 'package:bookapp/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = context.watch<ThemeProvider>();
    final ColorProvider colorProvider = context.watch<ColorProvider>();
    final TextContrastProvider textContrastProvider =
        context.watch<TextContrastProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await colorProvider.setColor('Blue');
          await textContrastProvider.setContrast(CONTRAST_HIGH);
          if (themeProvider.currentTheme != THEME_AMOLED) {
            themeProvider.setTheme(THEME_AMOLED);
          } else {
            themeProvider.setTheme(THEME_LIGHT);
          }
        },
      ),
    );
  }
}
