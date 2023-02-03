// Flutter imports:
// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class Styles {
  static const Color kMainColor = Colors.black;
  static const Color kBlack03 = Color(0x08000000);
  static const double kDefaultPaddingHalf = 8.0;
  static const double kDefaultPadding = 16.0;
  static const double largePadding = 32.0;
  static const Color kTextLightColor = Color(0xFFACACAC);
  static const Color kDarkGrey = Color(0xff282828);
  static const Color primaryColor = Color(0xFF0B0D1B);
  static const Color primaryTextColor = Color(0xFF282F63);
  static const Color filterBackgroundColor = Color(0xfff6f6f6);
  static const Color accentColor = Color(0xffFF4E52);
  static const Color coolGray = Color(0xFFAFCADE);
  static Color homeServiceCardColor = Colors.grey.shade50;
  static const double gridMainAxisSpacing = 8.0;
  static const double gridCrossAxisSpacing = 8.0;
  static const double formPageImageHorizontalPadding = 24;
  static const double formPageImageVerticalPadding = 12;
  static const double formPageHorizontalPadding = 20;
  static const double formPageVerticalPadding = 8;
  static const double homeCardPadding = 24;
  static const double homeCardElevation = 4;
  static Color tagTextColor = Colors.grey.shade600;
  static Color tagBorderColor =  Colors.grey.shade500;
  static FontWeight tagTextFontWeight = FontWeight.w500;
  static const double toggleButtonBorderWidth = 0.5;

  static const RoundedRectangleBorder tagShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  static BorderSide tagBorderSide = BorderSide(
    color: tagBorderColor,
    width: 0.5,
  );

  static BorderSide tagBorderSideBlack = const BorderSide(
    width: 0.5,
  );

  static const RoundedRectangleBorder tagShape2 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static const RoundedRectangleBorder tagShape2WithBorder =
  RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    side: BorderSide(width: 0.75),
  );

  static const RoundedRectangleBorder tagShape3WithBorder =
  RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(40)),
    side: BorderSide(width: 0.75),
  );

  static ButtonStyle smallElevatedButtonStyle = const ButtonStyle().copyWith(
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 12, horizontal: 20)),
    backgroundColor: MaterialStateProperty.all(const Color(0xFF2B2B2B)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );

  static ButtonStyle secondaryButtonStyle = const ButtonStyle().copyWith(
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
    backgroundColor: MaterialStateProperty.all(Colors.grey.shade400),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  static ButtonStyle thirdButtonStyle = const ButtonStyle().copyWith(
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 4, horizontal: 4)),
    backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static ButtonStyle disabledButtonStyle = const ButtonStyle().copyWith(
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
    backgroundColor: MaterialStateProperty.all(Colors.grey.shade400),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  static ButtonStyle whiteButtonStyle = const ButtonStyle().copyWith(
    padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 14, horizontal: 20)),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
    ),
  );

  static TextTheme kTextTheme = const TextTheme();

  static ThemeData themeData(BuildContext context) {
    final defaultTheme = Theme.of(context);

    return ThemeData(
      fontFamily: 'IBMPlexSansKR',
    ).copyWith(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: kMainColor,
      floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
        backgroundColor: kMainColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: const ButtonStyle().copyWith(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
          backgroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: const ButtonStyle().copyWith(
          foregroundColor: MaterialStateProperty.all(Colors.black),
          textStyle: MaterialStateProperty.all(
              const TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          primary: Colors.black87,
          minimumSize: const Size(88, 36),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ).copyWith(
          side: MaterialStateProperty.resolveWith<BorderSide>(
                (Set<MaterialState> states) {
              return const BorderSide(
                color: Colors.black,
                width: 1,
              ); // Defer to the widget's default.
            },
          ),
        ),
      ),
      chipTheme: defaultTheme.chipTheme.copyWith(
        selectedColor: kDarkGrey,
        secondarySelectedColor: kDarkGrey,
        backgroundColor: Colors.white,
      ),
    );
  }
}

/// NAME         SIZE  WEIGHT  SPACING
/// headline1    96.0  light   -1.5
/// headline2    60.0  light   -0.5
/// headline3    48.0  regular  0.0
/// headline4    34.0  regular  0.25
/// headline5    24.0  regular  0.0
/// headline6    20.0  medium   0.15
/// subtitle1    16.0  regular  0.15
/// subtitle2    14.0  medium   0.1
/// body1        16.0  regular  0.5   (bodyText1)
/// body2        14.0  regular  0.25  (bodyText2)
/// button       14.0  medium   1.25
/// caption      12.0  regular  0.4
/// overline     10.0  regular  1.5