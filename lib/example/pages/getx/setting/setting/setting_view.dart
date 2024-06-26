import 'package:brave_component/core/utils/language_utils.dart';
import 'package:brave_component/routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/language/local.dart';
import '../../../../../core/res/colours.dart';
import '../../../../../widgets/base/texts.dart';
import 'setting_logic.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  final logic = Get.find<SettingLogic>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Texts.fontSize18Normal(Local.setting.tr,
              color: Colours.titleColor),
        ),
        body: GetBuilder<SettingLogic>(builder: (logic) {
          return Container(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      logic.toName(RoutePath.multiLanguage);
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Texts.fontSize14Normal(Local.multiLanguage.tr,
                              color: Colours.titleColor),
                        ),
                        Texts.fontSize14Normal(
                            LanguageUtils.getLanguage(
                                context, logic.countryCode),
                            color: Colours.titleColor),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      logic.toName(RoutePath.theme);
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Texts.fontSize14Normal(Local.theme.tr,
                              color: Colours.titleColor),
                        ),
                        Texts.fontSize14Normal(Local.theme.tr,
                            color: Colours.titleColor),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
