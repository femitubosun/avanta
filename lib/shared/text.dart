import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextVariant {
  static dynamic bodySmall = {
    "fonstSize": 12.0,
    "fontWeight": FontWeight.normal,
    "lineHeight": 19.0,
  };

  static dynamic bodyMediumRegular = {
    "fonstSize": 14.0,
    "fontWeight": FontWeight.normal,
    "lineHeight": 21.0,
  };

  static dynamic bodyMediumSemiBold = {
    "fonstSize": 14.0,
    "fontWeight": FontWeight.w600,
    "lineHeight": 21.0,
  };
  static dynamic bodyMediumBold = {
    "fonstSize": 14.0,
    "fontWeight": FontWeight.bold,
    "lineHeight": 21.0,
  };

  static dynamic bodyLargeRegular = {
    "fonstSize": 16.0,
    "fontWeight": FontWeight.normal,
    "lineHeight": 24.0,
  };

  static dynamic bodyBold = {
    "fonstSize": 16.0,
    "fontWeight": FontWeight.bold,
    "lineHeight": 24.0,
  };

  static dynamic labelSmall = {
    "fonstSize": 11.0,
    "fontWeight": FontWeight.normal,
    "lineHeight": 18.0,
  };

  static dynamic labelMedium = {
    "fonstSize": 12.0,
    "fontWeight": FontWeight.normal,
    "lineHeight": 19,
  };

  static dynamic labelLarge = {
    "fonstSize": 14.0,
    "fontWeight": FontWeight.normal,
    "lineHeight": 21.0,
  };
  static dynamic titleSmall = {
    "fonstSize": 14.0,
    "fontWeight": FontWeight.w600,
    "lineHeight": 21.0,
  };

  static dynamic titleMedium = {
    "fonstSize": 16.0,
    "fontWeight": FontWeight.w600,
    "lineHeight": 23.0,
  };

  static dynamic titleLarge = {
    "fonstSize": 22.0,
    "fontWeight": FontWeight.w600,
    "lineHeight": 29.0,
  };
  static dynamic headLineSmall = {
    "fonstSize": 24.0,
    "fontWeight": FontWeight.w600,
    "lineHeight": 31.0,
  };

  static dynamic headlineMedium = {
    "fonstSize": 28.0,
    "fontWeight": FontWeight.w600,
    "lineHeight": 35,
  };

  static dynamic headlineLarge = {
    "fonstSize": 32.0,
    "fontWeight": FontWeight.w600,
    "lineHeight": 39.0,
  };
  static dynamic displaySmall = {
    "fonstSize": 36.0,
    "fontWeight": FontWeight.bold,
    "lineHeight": 43.0,
  };

  static dynamic displayMedium = {
    "fonstSize": 45.0,
    "fontWeight": FontWeight.bold,
    "lineHeight": 52,
  };

  static dynamic displayLarge = {
    "fonstSize": 57.0,
    "fontWeight": FontWeight.bold,
    "lineHeight": 64.0,
  };
}

class CustomText extends StatelessWidget {
  final Map<String, dynamic> variant;
  final String text;
  final TextAlign? textAlign;
  final Color color;

  const CustomText(
      {required this.text,
      required this.variant,
      required this.color,
      this.textAlign = TextAlign.center,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: textAlign,
        style: GoogleFonts.inter(
            color: color,
            fontSize: variant['fontSize'],
            fontWeight: variant['fontWeight']
            // height: variant['lineHeight'])
            ));
  }
}
