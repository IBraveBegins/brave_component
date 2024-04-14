import 'package:flutter/material.dart';

abstract class Buttons {
  static Widget wrapFilled({
    required VoidCallback? onPressed,
    required Widget child,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    Color? backgroundColor,
  }) {
    return FilledButton(
      style: FilledButton.styleFrom(
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: padding,
        shape: borderRadius != null
            ? RoundedRectangleBorder(borderRadius: borderRadius)
            : null,
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  static Widget wrapText({
    required VoidCallback? onPressed,
    required Widget child,
    EdgeInsets? padding,
  }) {
    return TextButton(
      style: TextButton.styleFrom(
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: padding,
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  static Widget wrapOutlined({
    required VoidCallback? onPressed,
    required Widget child,
    EdgeInsets? padding,
    OutlinedBorder? shape,
    BorderSide? side,
    Color? backgroundColor,
  }) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: padding,
        shape: shape,
        side: side,
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
