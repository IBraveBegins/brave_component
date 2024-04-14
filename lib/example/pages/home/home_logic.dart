import 'package:get/get.dart';

import '../../../routes/route_path.dart';

class HomeLogic extends GetxController {
  void toJumpMultiLanguage() {
    Get.toNamed(RoutePath.multiLanguage);
  }
}
