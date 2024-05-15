import 'package:chatgpt/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber100,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.08),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.2),
      );
  static BoxDecoration get fillWhiteA7001 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  // Outline decorations
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.4),
            width: 1.w,
          ),
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.whiteA700.withOpacity(0.4),
            width: 1.w,
          ),
        ),
      );
}
