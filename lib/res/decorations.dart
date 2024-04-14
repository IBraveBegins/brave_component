import 'package:flutter/material.dart';

import 'colours.dart';
import 'dimens.dart';

class Styles {
  static const BoxShadow defaultShadow =
      BoxShadow(color: Colors.black12, offset: Offset(0, 2.0), blurRadius: 4.0);

  static BoxDecoration get card10BoxDecoration => const BoxDecoration(
          color: Colours.cardColor,
          borderRadius: Dimens.borderRadius10,
          boxShadow: [
            BoxShadow(
                color: Colours.cardShadowColor,
                offset: Offset(0, 4),
                blurRadius: 10,
                spreadRadius: 0)
          ]);

  static const BoxDecoration topCard10BoxDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: Dimens.topBorderRadius10,
      boxShadow: [
        BoxShadow(
            color: Colours.shadowColor,
            offset: Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0)
      ]);

  static BoxDecoration get card20BoxDecoration => const BoxDecoration(
          color: Colours.cardColor,
          borderRadius: Dimens.borderRadius20,
          boxShadow: [
            BoxShadow(
                color: Colours.cardShadowColor,
                offset: Offset(0, 4),
                blurRadius: 20,
                spreadRadius: 0)
          ]);
}
