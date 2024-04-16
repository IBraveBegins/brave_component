import 'package:get/get.dart';

import 'l10n_multi_language_logic.dart';

class L10nMultiLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => L10nMultiLanguageLogic());
  }
}
