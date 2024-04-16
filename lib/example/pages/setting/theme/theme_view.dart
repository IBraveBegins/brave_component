import 'package:brave_component/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/res/colours.dart';
import '../../../../widgets/base/texts.dart';
import 'theme_logic.dart';

class ThemePage extends StatelessWidget {
  ThemePage({super.key});

  final logic = Get.find<ThemeLogic>();

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
