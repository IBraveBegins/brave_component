import 'package:brave_component/core/utils/language_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'l10n/l10n.dart';
import 'routes/route_pages.dart';
import 'routes/route_path.dart';

class L10nApp extends StatefulWidget {
  bool _init = true;
  L10nApp({super.key});

  @override
  State<L10nApp> createState() => L10nAppState();
}

class L10nAppState extends State<L10nApp> {
  // 供外部使用的_AppSetting实例，用于修改app的状态
  static AppSetting setting = AppSetting.instance;

  @override
  void initState() {
    super.initState();

    //第一次进入app时，获取本地多语言的countryCode
    if (widget._init) {
      setting.setLocale();
      widget._init = false;
    }
    // 更改语言
    setting.changeLocale = () {
      setState(() {});
    };
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RoutePath.l10n_main,
      getPages: RoutePages.getPages,
      title: 'component',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: setting._locale,
      fallbackLocale: const Locale("zh", "CN"),
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        print('当前语言：${deviceLocale.toString()}');
        return;
      },
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
    );
  }
}

class AppSetting {
  AppSetting._();

  static final AppSetting _instance = AppSetting._();

  static AppSetting get instance => _instance;
  Locale? _locale;

  Function()? changeLocale;

  void setLocale() {
    _locale = LanguageUtils.getLocale();
  }
}
