import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:brave_component/res.dart';

import '../../generated/r.dart';

typedef NavBackCallback = void Function(BuildContext context);

abstract class AppBars {
  static const defaultHeight = 44.0;

  static AppBar base({
    Key? key,
    String? title,
    TextStyle? titleTextStyle,
    Color? foregroundColor,
    Color? backgroundColor,
    double elevation = 0.0,
    Widget? leading,
    bool canBack = true,
    NavBackCallback? navBackCallback,
    List<Widget>? actions,
    String? backIcon,
    PreferredSizeWidget? bottom,
    SystemUiOverlayStyle? systemOverlayStyle,
  }) =>
      AppBar(
        key: key,
        title: title != null ? Text(title) : null,
        titleTextStyle: titleTextStyle,
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shadowColor: Colors.black26,
        elevation: elevation,
        systemOverlayStyle: systemOverlayStyle,
        leading: leading ??
            (canBack
                ? Builder(
                    builder: (context) {
                      return IconButton(
                        icon: ImageIcon(
                          AssetImage(backIcon ?? R.imagesNavBack),
                          size: 20,
                        ),
                        onPressed: () => navBackCallback != null
                            ? navBackCallback(context)
                            : Get.back(),
                        tooltip: 'Back',
                      );
                    },
                  )
                : null),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: actions,
        bottom: bottom,
        toolbarHeight: defaultHeight,
      );

  static AppBar white({
    Key? key,
    String? title,
    TextStyle? titleTextStyle,
    Color? foregroundColor,
    double elevation = 0.0,
    Widget? leading,
    bool canBack = true,
    NavBackCallback? navBackCallback,
    List<Widget>? actions,
    String? backIcon,
    PreferredSizeWidget? bottom,
    SystemUiOverlayStyle? systemUiOverlayStyle,
  }) =>
      base(
        key: key,
        title: title,
        titleTextStyle: titleTextStyle,
        foregroundColor: foregroundColor,
        backgroundColor: Colors.white,
        elevation: elevation,
        leading: leading,
        canBack: canBack,
        navBackCallback: navBackCallback,
        actions: actions,
        backIcon: backIcon,
        bottom: bottom,
        systemOverlayStyle: systemUiOverlayStyle,
      );

  static AppBar transparent({
    Key? key,
    String? title,
    TextStyle? titleTextStyle,
    Color? foregroundColor,
    double elevation = 0.0,
    Widget? leading,
    bool canBack = true,
    NavBackCallback? navBackCallback,
    List<Widget>? actions,
    String? backIcon,
    PreferredSizeWidget? bottom,
    SystemUiOverlayStyle? systemUiOverlayStyle,
  }) =>
      base(
        key: key,
        title: title,
        titleTextStyle: titleTextStyle,
        foregroundColor: foregroundColor,
        backgroundColor: Colors.transparent,
        elevation: elevation,
        leading: leading,
        canBack: canBack,
        navBackCallback: navBackCallback,
        actions: actions,
        backIcon: backIcon,
        bottom: bottom,
        systemOverlayStyle: systemUiOverlayStyle,
      );
}
