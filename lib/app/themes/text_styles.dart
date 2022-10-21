import 'package:bende/app/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: non_constant_identifier_names
TextTheme BendeTextStyles(BuildContext context) {
  return GoogleFonts.manropeTextTheme(
    Theme.of(context).textTheme.copyWith(
          headline1: const TextStyle(
            fontSize: 18,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w800,
            height: 1.5,
            color: BendeColors.white,
          ),
          headline2: const TextStyle(
            fontSize: 18,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w700,
            height: 1.5,
            color: BendeColors.aluminium,
          ),
          headline3: const TextStyle(
            fontSize: 18,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w800,
            height: 1.3,
            color: BendeColors.white,
          ),
          headline4: const TextStyle(
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600,
            height: 1.3,
            color: BendeColors.white,
          ),
          headline5: const TextStyle(
            fontSize: 20,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w700,
            height: 1.2,
            color: BendeColors.white,
          ),
          subtitle1: const TextStyle(
            fontSize: 14,
            letterSpacing: 0.4,
            fontWeight: FontWeight.w500,
            height: 1.5,
            color: BendeColors.aluminium,
          ),
          subtitle2: const TextStyle(
            fontSize: 14,
            letterSpacing: 0.2,
            fontWeight: FontWeight.w700,
            height: 1.5,
            color: BendeColors.white,
          ),
          caption: const TextStyle(
            fontSize: 12,
            letterSpacing: 0.8,
            fontWeight: FontWeight.w600,
            height: 1.5,
            color: BendeColors.aluminium,
          ),
          bodyText2: const TextStyle(
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.normal,
            height: 1.3,
            color: BendeColors.aluminium,
          ),
          bodyText1: const TextStyle(
            fontSize: 14,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: BendeColors.white,
          ),
        ),
  );
}
