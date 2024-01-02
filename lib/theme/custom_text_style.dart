import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeBluegray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyLargeGray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyLargeGray9000218 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
      );
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins;
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.2),
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.2),
      );
  static get bodyMediumBlack900_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray20001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray20001,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray400_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumBluegray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnPrimaryLight => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray400_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray400_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallGray50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50,
      );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  // Display text style
  static get displayMediumGray90001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.gray90001,
      );
  // Headline text style
  static get headlineLargeGray50 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray50,
      );
  static get headlineLargeGray90001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeGray90002 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeGray90002Medium =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeGray90002Regular =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeGray90002_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get headlineMediumGray90002 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumGray90002Medium =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumGray90002Regular =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumGray90002SemiBold =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumOnPrimary =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineMediumRegular => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray90002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray90002,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Manrope text style
  static get manropeGray50 => TextStyle(
        color: appTheme.gray50,
        fontSize: 110.fSize,
        fontWeight: FontWeight.w800,
      ).manrope;
  static get manropeYellow800 => TextStyle(
        color: appTheme.yellow800,
        fontSize: 300.fSize,
        fontWeight: FontWeight.w200,
      ).manrope;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack90020 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
      );
  static get titleLargeGray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray90001Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray90001Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray90001Regular20 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGray90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray9000220 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 20.fSize,
      );
  static get titleLargeGray90002Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeGray90002Regular => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w300,
      );
  static get titleMediumBluegray20001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray20001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray600,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray9000218 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
      );
  static get titleMediumGray90002Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90002Medium18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray90002SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPoppinsGray90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsGray90001Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray600,
      );
  static get titleSmallGray50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallGray50_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallGray90001Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray90002_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get titleSmallInterGray90002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray90002.withOpacity(0.53),
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
