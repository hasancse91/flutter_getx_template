import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/font_size.dart';

import '/app/core/values/app_colors.dart';

const centerTextStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: AppColors.centerTextColor,
);

const errorTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: AppColors.errorColor,
);

const greyDarkTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorGreyDark,
    height: 1.45);

const primaryColorSubtitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.colorPrimary,
    height: 1.45);

const whiteText16 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const whiteText18 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const whiteText32 = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

const cyanText16 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorCyan,
);

const cyanText32 = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorCyan,
);

const dialogSubtitle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorPrimary,
);

const labelStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.8,
);

final labelStylePrimaryTextColor = labelStyle.copyWith(
  color: AppColors.textColorPrimary,
  height: 1,
);

final labelStyleAppPrimaryColor = labelStyle.copyWith(
  color: AppColors.colorPrimary,
  height: 1,
);

final labelStyleGrey =
    labelStyle.copyWith(color: const Color(0xFF323232).withOpacity(0.5));

final labelCyanStyle = labelStyle.copyWith(color: AppColors.textColorCyan);

const labelStyleWhite = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.8,
  color: Colors.white,
);

const appBarSubtitleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.25,
    color: AppColors.colorWhite);

const cardTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textColorPrimary);

const cardTitleCyanStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: AppColors.colorPrimary,
);

const cardSubtitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textColorGreyLight);

const titleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.34,
);

const settingsItemStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);

final cardTagStyle = titleStyle.copyWith(color: AppColors.textColorGreyDark);

const titleStyleWhite = TextStyle(
    fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.colorWhite);

const inputFieldLabelStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.34,
  color: AppColors.textColorPrimary,
);

const cardSmallTagStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textColorGreyDark);

const pageTitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: AppColors.appBarTextColor);

final pageTitleBlackStyle =
    pageTitleStyle.copyWith(color: AppColors.textColorPrimary);

const appBarActionTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: AppColors.colorPrimary,
);

const pageTitleWhiteStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: AppColors.colorWhite);

const extraBigTitleStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w600,
  height: 1.12,
);

final extraBigTitleCyanStyle =
    extraBigTitleStyle.copyWith(color: AppColors.textColorCyan);

const bigTitleStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  height: 1.15,
);

const mediumTitleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  height: 1.15,
);

const descriptionTextStyle = TextStyle(
  fontSize: 16,
);

final bigTitleCyanStyle =
    bigTitleStyle.copyWith(color: AppColors.textColorCyan);

const bigTitleWhiteStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  height: 1.15,
  color: Colors.white,
);

const boldTitleStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  height: 1.34,
);
final boldTitleWhiteStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorWhite);

final boldTitleCyanStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorCyan);

final boldTitleSecondaryColorStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorSecondary);

final boldTitlePrimaryColorStyle =
    boldTitleStyle.copyWith(color: AppColors.colorPrimary);



const TextStyle appBarTextStyle = TextStyle(
  fontSize: FontSize.titleLarge,
  fontWeight: FontWeight.w700,
  color: AppColors.appBarTextLight,
);

const TextStyle appBarTextStyleDark = TextStyle(
  fontSize: FontSize.titleLarge,
  fontWeight: FontWeight.w700,
  color: AppColors.appBarTextDark,
);

const TextStyle primaryButtonTextStyle = TextStyle(
  fontSize: FontSize.titleLarge,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryButton,
);

const TextStyle secondaryButtonTextStyle = TextStyle(
  fontSize: FontSize.titleLarge,
  fontWeight: FontWeight.w500,
  color: AppColors.colorPrimary,
);

const TextStyle bodySmallTextStyle = TextStyle(
  fontSize: FontSize.bodySmall,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle bodySmallTextStyleDark = TextStyle(
  fontSize: FontSize.bodySmall,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle bodyMediumTextStyle = TextStyle(
  fontSize: FontSize.bodyMedium,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle bodyMediumTextStyleDark = TextStyle(
  fontSize: FontSize.bodyMedium,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle bodyLargeTextStyle = TextStyle(
  fontSize: FontSize.bodyLarge,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle bodyLargeTextStyleDark = TextStyle(
  fontSize: FontSize.bodyLarge,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle displaySmallTextStyle = TextStyle(
  fontSize: FontSize.displaySmall,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle displaySmallTextStyleDark = TextStyle(
  fontSize: FontSize.displaySmall,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle displayMediumTextStyle = TextStyle(
  fontSize: FontSize.displayMedium,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle displayMediumTextStyleDark = TextStyle(
  fontSize: FontSize.displayMedium,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle displayLargeTextStyle = TextStyle(
  fontSize: FontSize.displayLarge,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle displayLargeTextStyleDark = TextStyle(
  fontSize: FontSize.displayLarge,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle headlineSmallTextStyle = TextStyle(
  fontSize: FontSize.headlineSmall,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle headlineSmallTextStyleDark = TextStyle(
  fontSize: FontSize.headlineSmall,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle headlineMediumTextStyle = TextStyle(
  fontSize: FontSize.headlineMedium,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle headlineMediumTextStyleDark = TextStyle(
  fontSize: FontSize.headlineMedium,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle headlineLargeTextStyle = TextStyle(
  fontSize: FontSize.headlineLarge,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryLight,
);

const TextStyle headlineLargeTextStyleDark = TextStyle(
  fontSize: FontSize.headlineLarge,
  fontWeight: FontWeight.w500,
  color: AppColors.textPrimaryDark,
);

const TextStyle titleSmallTextStyle = TextStyle(
  fontSize: FontSize.titleSmall,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryLight,
);

const TextStyle titleSmallTextStyleDark = TextStyle(
  fontSize: FontSize.titleSmall,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryDark,
);

const TextStyle titleMediumTextStyle = TextStyle(
  fontSize: FontSize.titleMedium,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryLight,
);

const TextStyle titleMediumTextStyleDark = TextStyle(
  fontSize: FontSize.titleMedium,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryDark,
);

const TextStyle titleLargeTextStyle = TextStyle(
  fontSize: FontSize.titleLarge,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryLight,
);

const TextStyle titleLargeTextStyleDark = TextStyle(
  fontSize: FontSize.titleLarge,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryDark,
  letterSpacing: 0.0,
);

const TextStyle labelSmallTextStyle = TextStyle(
  fontSize: FontSize.labelSmall,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryLight,
  letterSpacing: 0.0,
);

const TextStyle labelSmallTextStyleDark = TextStyle(
  fontSize: FontSize.labelSmall,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryDark,
);

const TextStyle labelMediumTextStyle = TextStyle(
  fontSize: FontSize.labelMedium,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryLight,
);

const TextStyle labelMediumTextStyleDark = TextStyle(
  fontSize: FontSize.labelMedium,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryDark,
);

const TextStyle labelLargeTextStyle = TextStyle(
  fontSize: FontSize.labelLarge,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryLight,
);

const TextStyle labelLargeTextStyleDark = TextStyle(
  fontSize: FontSize.labelLarge,
  fontWeight: FontWeight.w700,
  color: AppColors.textPrimaryDark,
);

