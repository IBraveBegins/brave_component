import 'package:brave_component/core/enums/language.dart';
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
        title: Texts.fontSize18Normal(context.l10n.multiLanguage,
            color: Colours.titleColor),
        leading: GestureDetector(
          onTap: () {
            Get.back(result: 'changeLanguage');
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        // child: ListView(
        //   children: ListTile.divideTiles(
        //           context: context,
        //           tiles: Language.values
        //               .map((e) =>
        //                   GetBuilder<MultiLanguageLogic>(builder: (logic) {
        //                     return ListTile(
        //                       title: Texts.fontSize14Normal(e.title,
        //                           color: Colours.titleColor),
        //                       trailing: e.countryCode == logic.countryCode
        //                           ? const Icon(Icons.check,
        //                               color: Colours.primaryColor)
        //                           : null,
        //                       onTap: () {
        //                         logic.changeLanguage(e.countryCode);
        //                       },
        //                     );
        //                   }))
        //               .toList())
        //       .toList(),
        // ),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return _itemContent(context, index);
            },
            separatorBuilder: (_, index) => const Divider(),
            itemCount: Language.values.length),
      ),
    );
  }

  Widget _itemContent(BuildContext context, int index) {
    return GetBuilder<MultiLanguageLogic>(builder: (logic) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 44,
        child: GestureDetector(
          onTap: () {
            logic.changeLanguage(Language.values[index].countryCode);
          },
          child: Row(
            children: [
              Expanded(
                  child: Texts.fontSize14Normal(Language.values[index].title,
                      color: Colours.titleColor)),
              Visibility(
                  visible:
                      logic.countryCode == Language.values[index].countryCode,
                  child: const Icon(Icons.check, color: Colours.primaryColor))
            ],
          ),
        ),
      );
    });
  }
}
