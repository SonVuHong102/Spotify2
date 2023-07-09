import 'package:flutter/material.dart';
import 'package:spotify2/gen/fonts.gen.dart';
import 'package:spotify2/presenter/base/colors.dart';

class AppStyle {
  static const titleLarge = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 24,
    height: 32 / 24,
    fontWeight: FontWeight.w700,
  );

  static const titleMedium = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 20,
    height: 28 / 20,
    fontWeight: FontWeight.w600,
  );

  static const titleSmall = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 18,
    height: 28 / 18,
    fontWeight: FontWeight.normal,
  );

  static const headlineMedium = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w600,
  );

  static const headlineSmall = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.normal,
  );

  static const bodyMedium = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.w600,
  );

  static const bodySmall = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 14,
    height: 20 / 14,
    fontWeight: FontWeight.normal,
  );

  static const captionsMedium = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 12,
    height: 20 / 12,
    fontWeight: FontWeight.w600,
  );

  static const captionsSmall = TextStyle(
    fontFamily: FontFamily.montserrat,
    color: AppColors.neutralWhite,
    fontSize: 12,
    height: 20 / 12,
    fontWeight: FontWeight.normal,
  );
}
