import 'package:brave_component/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/res/colours.dart';
import '../../../../widgets/base/texts.dart';
import 'l10n_home_logic.dart';

class L10nHomePage extends StatelessWidget {
  L10nHomePage({super.key});

  final logic = Get.put(L10nHomeLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(context.l10n.appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Texts.fontSize14Normal(context.l10n.helloWorld,
                color: Colours.titleColor),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  logic.toJumpSetting();
                },
                child: Texts.fontSize14Normal(context.l10n.multiLanguage,
                    color: Colours.titleColor))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
