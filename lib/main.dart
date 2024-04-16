import 'package:brave_component/l10n/l10n.dart';
import 'package:brave_component/routes/route_pages.dart';
import 'package:brave_component/routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'core/cache/cache/cache.dart';
import 'core/cache/helpers/cache_helper.dart';
import 'core/enums/language.dart';

void main() async {
  await Cache.instance.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  bool _init = true;
  MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
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
      initialRoute: RoutePath.main,
      getPages: RoutePages.getPages,
      title: 'component',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: setting._locale,
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
    String code = CacheHelper.countryCode;
    List<String> lang = code.split('-');
    _locale = (code == Language.fsLan.countryCode)
        ? Get.deviceLocale
        : Locale(lang[0], lang[1]);
  }
}
