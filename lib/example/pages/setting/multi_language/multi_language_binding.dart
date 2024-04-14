import 'package:get/get.dart';

import 'multi_language_logic.dart';

class MultiLanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MultiLanguageLogic());
  }
}
