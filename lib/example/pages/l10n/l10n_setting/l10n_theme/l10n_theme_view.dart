import 'package:brave_component/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/res/colours.dart';
import '../../../../../widgets/base/texts.dart';
import 'l10n_theme_logic.dart';

class L10nThemePage extends StatelessWidget {
  L10nThemePage({super.key});

  final logic = Get.find<L10nThemeLogic>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Texts.fontSize18Normal(context.l10n.multiLanguage,
              color: Colours.titleColor),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            padding: const EdgeInsets.all(15),
            child: const Column(),
          ),
        ));
  }
}
