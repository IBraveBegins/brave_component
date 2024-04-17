import 'package:get/get.dart';

import '../../../../routes/route_path.dart';

class HomeLogic extends GetxController {
  void toJumpSetting() {
    Get.toNamed(RoutePath.setting);
  }
}
