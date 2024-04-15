import 'package:brave_component/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/res/colours.dart';
import '../../../widgets/base/texts.dart';
import 'home_logic.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final logic = Get.put(HomeLogic());

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
            Texts.fontNormal14(context.l10n.helloWorld,
                color: Colours.titleColor),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  logic.toJumpMultiLanguage();
                },
                child: Texts.fontNormal14(context.l10n.multiLanguage,
                    color: Colours.titleColor))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
