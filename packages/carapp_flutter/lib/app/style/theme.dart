import 'package:carapp_flutter/app/style/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primarySwatch: AppColors.brand,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: const AppBarTheme(color: AppColors.brandColor),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: AppColors.accentColor,
  ),
  cupertinoOverrideTheme: CupertinoThemeData(primaryColor: AppColors.brand),
);
