import 'package:extended_theme/extended_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/color_utils.dart';

const MyLightTheme = 'MyLightTheme';
const MyDarkTheme = 'MyDarkTheme';

class MyAppTheme extends ExtendedTheme {
  ///Watchlist Color Combos
  final Color? blue_white;
  final Color? white_darkGrey1;
  final Color? lightpurple_darkgrey;
  final Color? blue_lightGrey2;
  final Color? lightPurple1_darkGrey1;
  final Color? lightGrey3_darkGrey1;
  final Color? green_green1;
  final Color? darkGrey1_white;
  final Color? darkGrey1_black;
  final Color? blue_darkGrey1;
  final Color? lightBlue_lightGrey1;
  final Color? darkPurple_white;
  final Color? orange_orange;
  final LinearGradient? orangeGradient;
  final Color? blue_darkBlue;
  final Color? white_orange;
  final Color? lightPurple2_darkGrey1;
  final Color? red_red1;
  final Color? red_redF00;
  final Color? darkblue_darkgrey1;
  final Color? darkblue_darkgrey2;
  final LinearGradient? orangeGradient1;
  final Color? darkblue_lightgrey1;
  final Color? darkblue_lightgrey2;
  final Color? lightpurple1_orange;
  final Color? darkpurple_lightgrey1;
  final Color? darkblue_white;
  final Color? darkblue_lightGrey4;
  final Color? darkPurple_lightGrey1;
  final LinearGradient? darkGradient_white;
  final Color? colorBlack_lightGrey1;
  final Color? darkPurple_orange;
  final Color? darkPurple1_grey;
  final Color? colorBlack1_lightGrey1;
  final Color? darkPurple_lightGrey2;
  final Color? darkGrey2_white;
  final Color? colorBlack2_white;
  final Color? colorBlack3_white;
  final LinearGradient? darkGradient1;
  final Color? pink_pink1;
  final Color? white_black;
  final Color? blackshadowTransparent;
  final Color? lightPurple1CharcoalGrey;
  final Color? darkPurpleMercuryGrey;
  final Color? transparentOrange;
  final Color? lightGreen;
  final Color? lightRed;
  final Color? white_colorCharcoalGrey;
  final Color? orangeBeerOrange;
  final Color? blackWhite;
  final Color? darkBlueColorGrey;
  final LinearGradient? darkGradientColorGray;
  final Color? whiteMercuryGray;
  final Color? darkPurpleColorGray;
  final Color? darkBlueCharcoalGrey;
  final Color? darkBlueMercuryGrey;
  final Color? lightPurple1MercuryGrey;
  final Color? lightPurple1ColorGrey;
  final Color? lightPurple2CharcoalGrey;
  final LinearGradient? darkGradient1LightGradient2;
  final Color? lightPurple1black;
  final Color? darkPurpleBeerOrange;
  final Color? darkBlueBlack;
  final Color? blueColorGray;
  final Color? colorDisabledOrange;
  final Color? lightPurple1White;
  final Color? darkMercuryGrey;
  final Color? darkPurpleSoftPeach;
  final Color? linearFillBrownRed;
  final Color? lightPurple1orange;
  final Color? darkBluewhite;
  final Color? blueMercuryGrey;
  final LinearGradient? lightGradientWhite;
  final Color? darkgray3MercuryGray;
  final Color? colorBlack1MercuryGrey;
  final Color? blueCharcoalGrey;
  final Color? lightPurple1Silver;
  final Color? colorBlackMercuryGray;
  final Color? martiniCharcoalGrey;
  final Color? disabledColorGrey;
  final Color? darkPurpleCharcoalGrey;
  final Color? blackColorGray;
  final Color? darkpurpleSilver;
  final LinearGradient? darkGradient2Light;
  final Color? whiteLightCharcoalGrey;
  final Color? lightPurple1LightCharcoalGrey;
  final Color? blueLightCharcoalGrey;
  final Color? darkPurple1MercuryGrey;
  final LinearGradient? lightGradientColorGrey;
  final Color? lightPurple1LightSilver;
  final Color? blueBeerOrange;
  final LinearGradient? darkGradient2ColorGrey;
  final Color? darkRedWhiteRed;
  final LinearGradient? darkGradientMercuryGrey;

  MyAppTheme(ThemeData material,
      {this.blue_white,
      this.white_darkGrey1,
      this.lightpurple_darkgrey,
      this.blue_lightGrey2,
      this.lightPurple1_darkGrey1,
      this.lightGrey3_darkGrey1,
      this.green_green1,
      this.darkGrey1_white,
      this.darkGrey1_black,
      this.blue_darkGrey1,
      this.lightBlue_lightGrey1,
      this.darkPurple_white,
      this.orange_orange,
      this.orangeGradient,
      this.blue_darkBlue,
      this.white_orange,
      this.lightPurple2_darkGrey1,
      this.red_red1,
      this.red_redF00,
      this.darkblue_darkgrey1,
      this.darkblue_darkgrey2,
      this.darkblue_lightgrey1,
      this.darkblue_lightgrey2,
      this.orangeGradient1,
      this.lightpurple1_orange,
      this.darkpurple_lightgrey1,
      this.darkblue_white,
      this.darkblue_lightGrey4,
      this.darkPurple_lightGrey1,
      this.darkGradient_white,
      this.colorBlack_lightGrey1,
      this.darkPurple_orange,
      this.darkPurple1_grey,
      this.colorBlack1_lightGrey1,
      this.darkPurple_lightGrey2,
      this.darkGrey2_white,
      this.darkGradient1,
      this.colorBlack2_white,
      this.colorBlack3_white,
      this.pink_pink1,
      this.white_black,
      this.blackshadowTransparent,
      this.lightPurple1CharcoalGrey,
      this.darkPurpleMercuryGrey,
      this.transparentOrange,
      this.lightGreen,
      this.lightRed,
      this.white_colorCharcoalGrey,
      this.orangeBeerOrange,
      this.blackWhite,
      this.darkBlueColorGrey,
      this.darkGradientColorGray,
      this.whiteMercuryGray,
      this.darkPurpleColorGray,
      this.darkBlueCharcoalGrey,
      this.darkBlueMercuryGrey,
      this.lightPurple1MercuryGrey,
      this.lightPurple1ColorGrey,
      this.lightPurple2CharcoalGrey,
      this.darkGradient1LightGradient2,
      this.lightPurple1black,
      this.darkPurpleBeerOrange,
      this.darkBlueBlack,
      this.blueColorGray,
      this.colorDisabledOrange,
      this.lightPurple1White,
      this.darkMercuryGrey,
      this.darkPurpleSoftPeach,
      this.linearFillBrownRed,
      this.lightPurple1orange,
      this.darkBluewhite,
      this.blueMercuryGrey,
      this.lightGradientWhite,
      this.darkgray3MercuryGray,
      this.colorBlack1MercuryGrey,
      this.blueCharcoalGrey,
      this.lightPurple1Silver,
      this.colorBlackMercuryGray,
      this.martiniCharcoalGrey,
      this.disabledColorGrey,
      this.darkPurpleCharcoalGrey,
      this.blackColorGray,
      this.darkpurpleSilver,
      this.darkGradient2Light,
      this.whiteLightCharcoalGrey,
      this.lightPurple1LightCharcoalGrey,
      this.blueLightCharcoalGrey,
      this.darkPurple1MercuryGrey,
      this.lightGradientColorGrey,
      this.lightPurple1LightSilver,
      this.blueBeerOrange,
      this.darkGradient2ColorGrey,
      this.darkRedWhiteRed,
      this.darkGradientMercuryGrey})
      : super(material: material);
}

var typeThemeWhiteForDarkTheme = Typography.whiteMountainView.apply();
var typeThemeBlackForLightTheme = Typography.blackMountainView.apply();
final appThemes = {
  MyDarkTheme: MyAppTheme(
      ThemeData.dark().copyWith(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: blue,
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.transparent),
        textTheme: GoogleFonts.latoTextTheme(
          Typography.whiteMountainView.copyWith(
            //titleMedium : typeThemeWhiteForDarkTheme.titleMedium?.copyWith(),
            //titleSmall : typeThemeWhiteForDarkTheme.titleSmall?.copyWith(),

            displayLarge: typeThemeWhiteForDarkTheme.displayLarge?.copyWith(
              fontSize: 32,
            ),
            displayMedium: typeThemeWhiteForDarkTheme.displayMedium
                ?.copyWith(fontSize: 30),
            displaySmall:
                typeThemeWhiteForDarkTheme.displaySmall?.copyWith(fontSize: 24),
            headlineMedium: typeThemeWhiteForDarkTheme.headlineMedium
                ?.copyWith(fontSize: 20),
            headlineSmall: typeThemeWhiteForDarkTheme.headlineSmall
                ?.copyWith(fontSize: 18),
            titleLarge: typeThemeWhiteForDarkTheme.titleLarge?.copyWith(
              fontSize: 16,
            ),
            // headline2:
            //     typeThemeWhiteForDarkTheme.headline2?.copyWith(fontSize: 30),
            // headline3:
            //     typeThemeWhiteForDarkTheme.headline3?.copyWith(fontSize: 24),
            // headline4:
            //     typeThemeWhiteForDarkTheme.headline4?.copyWith(fontSize: 20),
            // headline5:
            //     typeThemeWhiteForDarkTheme.headline5?.copyWith(fontSize: fontExtraLarge),
            // headline6: typeThemeWhiteForDarkTheme.headline6?.copyWith(
            //   fontSize: fontLarge, ),
            titleMedium:
                typeThemeWhiteForDarkTheme.titleMedium?.copyWith(fontSize: 14),
            titleSmall:
                typeThemeWhiteForDarkTheme.titleSmall?.copyWith(fontSize: 12),
            bodyLarge:
                typeThemeWhiteForDarkTheme.bodyLarge?.copyWith(fontSize: 8),
            bodyMedium: typeThemeWhiteForDarkTheme.bodyMedium,
            // subtitle1:
            //     typeThemeWhiteForDarkTheme.subtitle1?.copyWith(fontSize: fontNormal,),
            // subtitle2:
            //     typeThemeWhiteForDarkTheme.subtitle2?.copyWith(fontSize: fontMedium),
            // bodyText1:
            //     typeThemeWhiteForDarkTheme.bodyText1?.copyWith(fontSize: fontExtraSmall),
            // bodyText2: typeThemeWhiteForDarkTheme.bodyText2
            //     ?.copyWith(fontSize: 29, fontWeight: FontWeight.bold),
            headlineLarge: typeThemeWhiteForDarkTheme.headlineLarge
                ?.copyWith(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      blue_white: blue,
      white_darkGrey1: white,
      lightpurple_darkgrey: lightPurple,
      blue_lightGrey2: blue,
      lightPurple1_darkGrey1: lightPurple1,
      lightGrey3_darkGrey1: lightGrey3,
      green_green1: green,
      darkGrey1_white: darkGrey1,
      darkGrey1_black: darkGrey1,
      blue_darkGrey1: blue,
      lightBlue_lightGrey1: lightBlue,
      darkPurple_white: darkPurple,
      orange_orange: orange,
      orangeGradient: orangeGradient,
      blue_darkBlue: blue,
      white_orange: white,
      lightPurple2_darkGrey1: lightPurple2,
      red_red1: red,
      red_redF00: redF00,
      darkblue_darkgrey1: darkBlue,
      darkblue_darkgrey2: darkBlue,
      orangeGradient1: orangeGradient1,
      darkblue_lightgrey1: darkBlue,
      darkblue_lightgrey2: darkBlue,
      lightpurple1_orange: lightPurple1,
      darkpurple_lightgrey1: darkPurple,
      darkblue_white: darkBlue,
      darkblue_lightGrey4: darkBlue,
      darkPurple_lightGrey1: darkPurple,
      darkGradient_white: darkGradient,
      colorBlack_lightGrey1: colorBlack,
      darkPurple_orange: darkPurple,
      darkPurple1_grey: darkPurple1,
      colorBlack1_lightGrey1: colorBlack1,
      darkPurple_lightGrey2: darkPurple,
      darkGrey2_white: darkGrey2,
      darkGradient1: dark_Gradient,
      pink_pink1: primaryColor,
      colorBlack2_white: colorBlack2,
      colorBlack3_white: colorBlack3,
      white_black: white,
      blackshadowTransparent: colorBlackShadow,
      lightPurple1CharcoalGrey: lightPurple1,
      transparentOrange: colorTransparent,
      darkPurpleMercuryGrey: darkPurple,
      lightGreen: lightGreen,
      lightRed: lightRed,
      white_colorCharcoalGrey: white,
      orangeBeerOrange: orange,
      blackWhite: colorCompleteBlack,
      darkBlueColorGrey: darkBlue,
      darkGradientColorGray: darkGradient,
      darkPurpleColorGray: darkPurple,
      darkBlueCharcoalGrey: darkBlue,
      whiteMercuryGray: white,
      darkBlueMercuryGrey: darkBlue,
      lightPurple1MercuryGrey: lightPurple1,
      lightPurple1ColorGrey: lightPurple1,
      lightPurple2CharcoalGrey: lightPurple2,
      darkGradient1LightGradient2: dark_Gradient,
      lightPurple1black: lightPurple1,
      darkPurpleBeerOrange: darkPurple,
      darkBlueBlack: darkBlue,
      blueColorGray: blue,
      colorDisabledOrange: colorDisabled,
      lightPurple1White: lightPurple1,
      darkMercuryGrey: colorDark,
      darkPurpleSoftPeach: darkPurple,
      linearFillBrownRed: colorBackgroundLinearFillBrown,
      lightPurple1orange: lightPurple1,
      darkBluewhite: darkBlue,
      blueMercuryGrey: blue,
      lightGradientWhite: lightGradient,
      darkgray3MercuryGray: darkGrey3,
      colorBlack1MercuryGrey: colorBlack1,
      blueCharcoalGrey: blue,
      lightPurple1Silver: lightPurple1,
      colorBlackMercuryGray: colorBlack,
      martiniCharcoalGrey: martini,
      disabledColorGrey: colorDisabled,
      darkPurpleCharcoalGrey: darkPurple,
      blackColorGray: black,
      darkpurpleSilver: darkPurple,
      darkGradient2Light: darkGradient2,
      whiteLightCharcoalGrey: white,
      lightPurple1LightCharcoalGrey: lightPurple1,
      blueLightCharcoalGrey: blue,
      darkPurple1MercuryGrey: darkPurple1,
      lightGradientColorGrey: lightGradient,
      lightPurple1LightSilver: lightPurple1,
      blueBeerOrange: blue,
      darkGradient2ColorGrey: darkGradient2,
      darkRedWhiteRed: darkred25,
      darkGradientMercuryGrey: darkGradient),
  MyLightTheme: MyAppTheme(
      ThemeData.light().copyWith(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        bottomSheetTheme:
            const BottomSheetThemeData(backgroundColor: Colors.transparent),
        primaryColor: Colors.greenAccent,
        secondaryHeaderColor: Colors.white,
        //splashColor: colorDeepGold,
        cardColor: Colors.white,
        //highlightColor: colorGold,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.latoTextTheme(
          Typography.blackMountainView.copyWith(
            //titleMedium : typeThemeWhiteForDarkTheme.titleMedium?.copyWith(),
            //titleSmall : typeThemeWhiteForDarkTheme.titleSmall?.copyWith(),

            displayLarge: typeThemeBlackForLightTheme.displayLarge
                ?.copyWith(fontSize: 32),
            displayMedium: typeThemeBlackForLightTheme.displayMedium
                ?.copyWith(fontSize: 30),
            displaySmall: typeThemeBlackForLightTheme.displaySmall
                ?.copyWith(fontSize: 24),
            headlineMedium: typeThemeBlackForLightTheme.headlineMedium
                ?.copyWith(fontSize: 20),
            headlineSmall: typeThemeBlackForLightTheme.headlineSmall
                ?.copyWith(fontSize: 18),
            titleLarge:
                typeThemeBlackForLightTheme.titleLarge?.copyWith(fontSize: 16),
            titleMedium:
                typeThemeBlackForLightTheme.titleMedium?.copyWith(fontSize: 14),
            titleSmall:
                typeThemeBlackForLightTheme.titleSmall?.copyWith(fontSize: 12),
            bodyLarge:
                typeThemeBlackForLightTheme.bodyLarge?.copyWith(fontSize: 8),
            bodyMedium: typeThemeBlackForLightTheme.bodyMedium
                ?.copyWith(fontSize: 29, fontWeight: FontWeight.bold),
            headlineLarge: typeThemeBlackForLightTheme.headlineLarge
                ?.copyWith(fontSize: 36, fontWeight: FontWeight.bold),
            // headline1:
            //     typeThemeBlackForLightTheme.headline1?.copyWith(fontSize: 32),
            // headline2:
            //     typeThemeBlackForLightTheme.headline2?.copyWith(fontSize: 30),
            // headline3:
            //     typeThemeBlackForLightTheme.headline3?.copyWith(fontSize: 24),
            // headline4:
            //     typeThemeBlackForLightTheme.headline4?.copyWith(fontSize: 20),
            // headline5:
            //     typeThemeBlackForLightTheme.headline5?.copyWith(fontSize: fontExtraLarge),
            // headline6:
            //     typeThemeBlackForLightTheme.headline6?.copyWith(fontSize: fontLarge),
            // subtitle1:
            //     typeThemeBlackForLightTheme.subtitle1?.copyWith(fontSize: fontNormal,),
            // subtitle2:
            //     typeThemeBlackForLightTheme.subtitle2?.copyWith(fontSize: fontMedium),
            // bodyText1:
            //     typeThemeBlackForLightTheme.bodyText1?.copyWith(fontSize: fontExtraSmall),

            ///Unused Yet
            //bodyText2 : typeThemeBlackForLightTheme.bodyText2?.copyWith(fontSize: 32),
            //button : typeThemeBlackForLightTheme.button?.copyWith(),
            //caption : typeThemeBlackForLightTheme.caption?.copyWith(),
            //overline : typeThemeBlackForLightTheme.overline?.copyWith(),
            //titleMedium : typeThemeBlackForLightTheme.titleMedium?.copyWith(),
            //titleSmall : typeThemeBlackForLightTheme.titleSmall?.copyWith(),
            //displayMedium: typeThemeBlackForLightTheme.displayMedium?.copyWith(fontWeight: FontWeight.w500,fontSize:18),
          ),
        ),
      ),
      blue_white: white,
      white_darkGrey1: darkGrey1,
      lightpurple_darkgrey: darkGrey,
      blue_lightGrey2: lightGrey2,
      lightPurple1_darkGrey1: darkGrey1,
      lightGrey3_darkGrey1: darkGrey1,
      darkblue_lightGrey4: lightGrey4,
      green_green1: green,
      darkGrey1_white: white,
      darkGrey1_black: black,
      blue_darkGrey1: darkGrey1,
      lightBlue_lightGrey1: lightGrey1,
      darkPurple_white: white,
      orange_orange: colorBeerOrange,
      orangeGradient: orangeGradient,
      blue_darkBlue: darkBlue,
      white_orange: colorBeerOrange,
      lightPurple2_darkGrey1: darkGrey1,
      red_red1: red,
      red_redF00: redF00,
      darkblue_darkgrey1: darkGrey1,
      darkblue_darkgrey2: darkGrey2,
      orangeGradient1: orangeGradient1,
      darkblue_lightgrey1: lightGrey1,
      darkblue_lightgrey2: colorGray,
      lightpurple1_orange: colorBeerOrange,
      darkpurple_lightgrey1: lightGrey1,
      darkblue_white: white,
      darkGradient_white: whiteGradient,
      colorBlack_lightGrey1: colorBlack,
      darkPurple_orange: colorBeerOrange,
      darkPurple1_grey: grey,
      colorBlack1_lightGrey1: lightGrey1,
      darkGradient1: dark_Gradient,
      pink_pink1: primaryColor,
      colorBlack2_white: colorBlack2,
      colorBlack3_white: colorBlack3,
      white_black: black,
      blackshadowTransparent: colorTransparent,
      lightPurple1CharcoalGrey: colorCharcoalGrey,
      darkPurpleMercuryGrey: colorMercuryGrey,
      transparentOrange: colorBeerOrange,
      white_colorCharcoalGrey: colorCharcoalGrey,
      blackWhite: white,
      darkBlueColorGrey: colorGray,
      orangeBeerOrange: colorBeerOrange,
      darkGradientColorGray: greyGradient,
      darkPurpleColorGray: colorGray,
      darkBlueCharcoalGrey: colorCharcoalGrey,
      whiteMercuryGray: colorMercuryGrey,
      darkBlueMercuryGrey: colorMercuryGrey,
      lightPurple1MercuryGrey: colorMercuryGrey,
      lightPurple1ColorGrey: colorGray,
      lightPurple2CharcoalGrey: colorCharcoalGrey,
      darkGradient1LightGradient2: lightGradient2,
      lightPurple1black: black,
      darkPurpleBeerOrange: colorBeerOrange,
      darkBlueBlack: black,
      blueColorGray: colorGray,
      colorDisabledOrange: colorBeerOrange,
      lightPurple1White: white,
      darkMercuryGrey: colorMercuryGrey,
      darkPurpleSoftPeach: softPeach,
      lightPurple1orange: colorBeerOrange,
      linearFillBrownRed: red.withOpacity(0.50),
      darkBluewhite: white,
      blueMercuryGrey: colorMercuryGrey,
      lightGradientWhite: whiteGradient,
      darkgray3MercuryGray: colorMercuryGrey,
      colorBlack1MercuryGrey: colorMercuryGrey,
      blueCharcoalGrey: colorCharcoalGrey,
      lightPurple1Silver: colorSilver,
      colorBlackMercuryGray: colorMercuryGrey,
      martiniCharcoalGrey: colorCharcoalGrey,
      disabledColorGrey: colorGray,
      blackColorGray: colorGray,
      darkpurpleSilver: colorSilver,
      darkPurpleCharcoalGrey: colorCharcoalGrey,
      darkGradient2Light: whiteGradient,
      whiteLightCharcoalGrey: colorCharcoalGrey.withOpacity(0.6),
      lightPurple1LightCharcoalGrey: colorCharcoalGrey.withOpacity(0.6),
      blueLightCharcoalGrey: colorCharcoalGrey.withOpacity(0.6),
      darkPurple1MercuryGrey: colorMercuryGrey,
      lightGradientColorGrey: greyGradient,
      lightPurple1LightSilver: colorSilver.withOpacity(0.6),
      blueBeerOrange: colorBeerOrange,
      darkGradient2ColorGrey: greyGradient,
      darkRedWhiteRed: whitered25,
      darkGradientMercuryGrey: lightGradient2),
};

enum AppTheme {
  LightAppTheme,
  DarkAppTheme,
}

final appThemeData = {
  AppTheme.DarkAppTheme: ThemeData(),
  AppTheme.LightAppTheme: ThemeData(),
};
