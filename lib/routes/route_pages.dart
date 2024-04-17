import 'package:get/get.dart';
import 'package:brave_component/routes/route_path.dart';

import '../example/pages/getx/home/home_view.dart';
import '../example/pages/getx/setting/multi_language/multi_language_binding.dart';
import '../example/pages/getx/setting/multi_language/multi_language_view.dart';
import '../example/pages/getx/setting/setting/setting_binding.dart';
import '../example/pages/getx/setting/setting/setting_view.dart';
import '../example/pages/getx/setting/theme/theme_binding.dart';
import '../example/pages/getx/setting/theme/theme_view.dart';
import '../example/pages/l10n/l10n_home/l10n_home_view.dart';
import '../example/pages/l10n/l10n_setting/l10n_multi_language/l10n_multi_language_binding.dart';
import '../example/pages/l10n/l10n_setting/l10n_multi_language/l10n_multi_language_view.dart';
import '../example/pages/l10n/l10n_setting/l10n_setting/l10n_setting_binding.dart';
import '../example/pages/l10n/l10n_setting/l10n_setting/l10n_setting_view.dart';
import '../example/pages/l10n/l10n_setting/l10n_theme/l10n_theme_binding.dart';
import '../example/pages/l10n/l10n_setting/l10n_theme/l10n_theme_view.dart';

class RoutePages {
  static final List<GetPage> getPages = [
    GetPage(
      name: RoutePath.l10n_main,
      page: () => L10nHomePage(),
    ),
    GetPage(
      name: RoutePath.l10n_setting,
      page: () => L10nSettingPage(),
      binding: L10nSettingBinding(),
    ),
    GetPage(
      name: RoutePath.l10n_multiLanguage,
      page: () => L10nMultiLanguagePage(),
      binding: L10nMultiLanguageBinding(),
    ),
    GetPage(
      name: RoutePath.l10n_theme,
      page: () => L10nThemePage(),
      binding: L10nThemeBinding(),
    ),
    GetPage(
      name: RoutePath.main,
      page: () => HomePage(),
    ),
    GetPage(
      name: RoutePath.setting,
      page: () => SettingPage(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: RoutePath.multiLanguage,
      page: () => MultiLanguagePage(),
      binding: MultiLanguageBinding(),
    ),
    GetPage(
      name: RoutePath.theme,
      page: () => ThemePage(),
      binding: ThemeBinding(),
    ),
  ];
}
