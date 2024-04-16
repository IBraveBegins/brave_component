import 'package:flutter/material.dart';

abstract class Texts {
  /// 18号字体
  static Text fontSize18Normal(
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

  static Text fontSize18Medium(
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

  static Text fontSize18SemiBold(
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

  static Text fontSize18Bold(
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
  static Text fontSize16Normal(
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

  static Text fontSize16Medium(
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

  static Text fontSize16SemiBold(
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

  static Text fontSize16Bold(
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
  static Text fontSize14Normal(
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

  static Text fontSize14Medium(
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

  static Text fontSize14SemiBold(
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

  static Text fontSize14Bold(
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
  static Text fontSize12Normal(
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

  static Text fontSize12Medium(
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

  static Text fontSize12SemiBold(
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

  static Text fontSize12Bold(
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
