import 'dart:ui';

import 'package:get/get.dart';

import '../../../../main.dart';

class MultiLanguageLogic extends GetxController {
  void changeLocale(Locale locale) {
    MyAppState.setting.changeLocale!(locale);
  }
}
