import 'package:brave_component/core/language/local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/res/colours.dart';
import '../../../../widgets/base/texts.dart';
import 'home_logic.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(Local.appName.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Texts.fontSize14Normal(Local.helloWorld.tr,
                color: Colours.titleColor),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  logic.toJumpSetting();
                },
                child: Texts.fontSize14Normal(Local.multiLanguage.tr,
                    color: Colours.titleColor))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
