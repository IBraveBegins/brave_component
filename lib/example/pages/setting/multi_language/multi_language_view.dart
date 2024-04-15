import 'package:brave_component/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/res/colours.dart';
import '../../../../widgets/base/texts.dart';
import 'multi_language_logic.dart';

class MultiLanguagePage extends StatelessWidget {
  MultiLanguagePage({super.key});

  final logic = Get.find<MultiLanguageLogic>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Texts.fontSemiBold18(context.l10n.multiLanguage,
            color: Colours.titleColor),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Center(
          child: Column(
            children: [
              Texts.fontNormal14(context.l10n.multiLanguage,
                  color: Colours.titleColor),
              const SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {
                    logic.changeLocale(const Locale('zh'));
                  },
                  child: Texts.fontNormal14(context.l10n.simplifiedChinese,
                      color: Colours.titleColor)),
              const SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {
                    logic.changeLocale(const Locale('zh', 'HK'));
                  },
                  child: Texts.fontNormal14(context.l10n.traditionalChinese,
                      color: Colours.titleColor)),
              const SizedBox(height: 12),
              ElevatedButton(
                  onPressed: () {
                    logic.changeLocale(const Locale('en'));
                  },
                  child: Texts.fontNormal14(context.l10n.english,
                      color: Colours.titleColor))
            ],
          ),
        ),
      ),
    );
  }
}
