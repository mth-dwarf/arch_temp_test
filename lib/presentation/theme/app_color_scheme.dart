import 'dart:ui';

class AppColorScheme {
  final Brightness brightness;
  final Color textPrimary;
  final Color textSecondary;
  final Color textHighlight;
  final Color textInvertPrimary;
  final Color textInvertSecondary;

  final Color surfacePrimary;
  final Color surfaceSecondary;
  final Color surfaceTertiary;
  final Color surfaceHighlight;
  final Color surfaceInvert;

  final Color borderDefault;
  final Color borderInvert;
  final Color borderHighlight;

  final Color background;

  AppColorScheme(
    this.brightness,
    this.textPrimary,
    this.textSecondary,
    this.textHighlight,
    this.textInvertPrimary,
    this.textInvertSecondary,
    this.surfacePrimary,
    this.surfaceSecondary,
    this.surfaceTertiary,
    this.surfaceHighlight,
    this.surfaceInvert,
    this.borderDefault,
    this.borderInvert,
    this.borderHighlight,
    this.background,
  );
}
