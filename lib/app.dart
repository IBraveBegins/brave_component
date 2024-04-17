import 'package:brave_component/core/utils/language_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'core/language/messages.dart';
import 'l10n/l10n.dart';
import 'routes/route_pages.dart';
import 'routes/route_path.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
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
      translations: Messages(),
      locale: LanguageUtils.getLocale(),
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
