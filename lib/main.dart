import 'package:brave_component/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  // 供外部使用的_AppSetting实例，用于修改app的状态
  static _AppSetting setting = _AppSetting.instance;

  @override
  void initState() {
    super.initState();
    // 更改语言
    setting.changeLocale = (Locale locale) {
      setState(() {
        setting.setLocale(locale);
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const MyHomePage(),
    );
  }
}

class _AppSetting {
  _AppSetting._(); // 私有命名构造函数

  // 静态属性，用于存储_AppSetting的实例
  static final _AppSetting _instance = _AppSetting._();

  // 静态方法，用于获取_AppSetting的实例
  static _AppSetting get instance => _instance;

  Function(Locale locale)? changeLocale; // 使用?表示这个字段可以为null
  Locale? _locale; // 使用?表示这个字段可以为null
  final List<Locale> _supportedLocales = [
    const Locale('zh', 'CN'),
    const Locale('en', 'US')
  ];

  // 公开的方法来更改locale
  void setLocale(Locale locale) {
    if (_supportedLocales
        .map((locale) {
          return locale.languageCode;
        })
        .toSet()
        .contains(locale?.languageCode)) {
      _locale = locale;
    }
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(context.l10n.appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(context.l10n.helloWorld),
            ElevatedButton(
                onPressed: () {
                  MyAppState.setting.changeLocale!(const Locale('zh'));
                },
                child: Text(context.l10n.simplifiedChinese)),
            ElevatedButton(
                onPressed: () {
                  MyAppState.setting.changeLocale!(const Locale('en'));
                },
                child: Text(context.l10n.english))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
