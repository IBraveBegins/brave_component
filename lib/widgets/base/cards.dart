import 'package:flutter/material.dart';

import '../../core/res/dimens.dart';

abstract class Cards {
  static Widget normal({
    required Widget child,
    BorderRadius? borderRadius,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    VoidCallback? onTap,
    Color? borderColor,
  }) =>
      onTap != null
          ? Padding(
              padding: margin ?? EdgeInsets.zero,
              child: Material(
                type: MaterialType.card,
                color: Colors.white,
                borderRadius: borderColor == null
                    ? (borderRadius ?? Dimens.borderRadius8)
                    : null,
                clipBehavior: Clip.hardEdge,
                shape: borderColor != null
                    ? RoundedRectangleBorder(
                        side: BorderSide(color: borderColor),
                        borderRadius: borderRadius ?? Dimens.borderRadius8,
                      )
                    : null,
                child: InkWell(
                  onTap: onTap,
                  child: padding != null
                      ? Padding(
                          padding: padding,
                          child: child,
                        )
                      : child,
                ),
              ),
            )
          : Container(
              padding: padding,
              margin: margin,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Dimens.borderRadius12,
                border:
                    borderColor != null ? Border.all(color: borderColor) : null,
              ),
              child: child,
            );

  static Widget radius12({
    required Widget child,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    VoidCallback? onTap,
    Color? borderColor,
  }) =>
      onTap != null
          ? Padding(
              padding: margin ?? EdgeInsets.zero,
              child: Material(
                type: MaterialType.card,
                color: Colors.white,
                borderRadius:
                    borderColor == null ? Dimens.borderRadius12 : null,
                clipBehavior: Clip.hardEdge,
                shape: borderColor != null
                    ? RoundedRectangleBorder(
                        side: BorderSide(color: borderColor),
                        borderRadius: Dimens.borderRadius12,
                      )
                    : null,
                child: InkWell(
                  onTap: onTap,
                  child: padding != null
                      ? Padding(
                          padding: padding,
                          child: child,
                        )
                      : child,
                ),
              ),
            )
          : Container(
              padding: padding,
              margin: margin,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: Dimens.borderRadius12,
                border:
                    borderColor != null ? Border.all(color: borderColor) : null,
              ),
              child: child,
            );
}
