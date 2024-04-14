import 'package:flutter/material.dart';

abstract class Texts {
  /// 18号字体
  static Text fontNormal18(
    String text, {
    Color? color,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 18,
        color: color,
        textAlign: textAlign,
        fontWeight: fontWeight ?? FontWeight.w400,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontMedium18(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 18,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w500,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontSemiBold18(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 18,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w600,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontBold18(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 18,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w700,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  /// 16号字体
  static Text fontNormal16(
    String text, {
    Color? color,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 16,
        color: color,
        textAlign: textAlign,
        fontWeight: fontWeight ?? FontWeight.w400,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontMedium16(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 16,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w500,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontSemiBold16(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 16,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w600,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontBold16(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 16,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w700,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  /// 14号字体
  static Text fontNormal14(
    String text, {
    Color? color,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 14,
        color: color,
        textAlign: textAlign,
        fontWeight: fontWeight ?? FontWeight.w400,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontMedium14(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 14,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w500,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontSemiBold14(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 14,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w600,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontBold14(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 14,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w700,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  /// 12号字体
  static Text fontNormal12(
    String text, {
    Color? color,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 12,
        color: color,
        textAlign: textAlign,
        fontWeight: fontWeight ?? FontWeight.w400,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontMedium12(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 12,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w500,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontSemiBold12(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 12,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w600,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text fontBold12(
    String text, {
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      custom(
        text,
        fontSize: 12,
        color: color,
        textAlign: textAlign,
        fontWeight: FontWeight.w700,
        maxLines: maxLines,
        overflow: overflow,
        letterSpacing: letterSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
      );

  static Text custom(
    String text, {
    double? fontSize,
    double? height,
    Color? color,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    int? maxLines,
    TextOverflow? overflow,
    double? letterSpacing,
    TextDecoration? decoration,
    Color? decorationColor,
  }) =>
      Text(
        text,
        textAlign: textAlign,
        maxLines: maxLines,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          height: height,
          fontWeight: fontWeight,
          letterSpacing: letterSpacing,
          overflow: overflow,
          decoration: decoration,
          decorationColor: decorationColor,
        ),
      );
}
