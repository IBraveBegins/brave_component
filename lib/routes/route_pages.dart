import 'package:get/get.dart';
import 'package:brave_component/routes/route_path.dart';

import '../example/pages/home/home_view.dart';
import '../example/pages/setting/multi_language/multi_language_binding.dart';
import '../example/pages/setting/multi_language/multi_language_view.dart';

class RoutePages {
  static final List<GetPage> getPages = [
    GetPage(
      name: RoutePath.main,
      page: () => HomePage(),
    ),
    GetPage(
      name: RoutePath.multiLanguage,
      page: () => MultiLanguagePage(),
      binding: MultiLanguageBinding(),
    ),
  ];
}
