import 'package:bookapp/app/signin/widgets/signupform.dart';
import 'package:bookapp/theme/color_provider.dart';
import 'package:bookapp/theme/color_schemes.dart';
import 'package:bookapp/theme/contrast_provider.dart';
import 'package:bookapp/theme/theme_provider.dart';
import 'package:bookapp/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupMobileBody extends StatelessWidget {
  const SignupMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = context.watch<ThemeProvider>();
    final ColorProvider colorProvider = context.watch<ColorProvider>();
    final TextContrastProvider textContrastProvider =
        context.watch<TextContrastProvider>();

    final theme = Theme.of(context);
    final text_theme = theme.textTheme;

    TextEditingController _emailController = TextEditingController(text: "");
    TextEditingController _passwController = TextEditingController(text: "");

    return Scaffold(
      // backgroundColor: ,
      body: Padding(
        padding: const EdgeInsets.all(paddingHuge),
        child: Container(
          child: SignupForm(),
        ),
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
