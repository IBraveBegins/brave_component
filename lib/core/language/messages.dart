import 'package:get/get.dart';

import 'local.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          Local.appName: 'BraveComponent',
          Local.helloWorld: '你好，世界',
          Local.followerSystemLanguage: '跟随系统语言',
          Local.simplifiedChinese: '简体中文',
          Local.traditionalChinese: '繁体中文',
          Local.english: '英文',
          Local.setting: '设置',
          Local.multiLanguage: '多语言',
          Local.theme: '主题',
        },
        'zh_HK': {
          Local.appName: 'BraveComponent',
          Local.helloWorld: '妳好，世界',
          Local.followerSystemLanguage: '跟隨系統語言',
          Local.simplifiedChinese: '簡體中文',
          Local.traditionalChinese: '繁體中文',
          Local.english: '英文',
          Local.setting: '設置',
          Local.multiLanguage: '多語言',
          Local.theme: '主題',
        },
        'en_US': {
          Local.appName: 'BraveComponent',
          Local.helloWorld: 'HelloWorld',
          Local.followerSystemLanguage: 'FollowerSystemLanguage',
          Local.simplifiedChinese: 'SimplifiedChinese',
          Local.traditionalChinese: 'TraditionalChinese',
          Local.english: 'English',
          Local.setting: 'Setting',
          Local.multiLanguage: 'MultiLanguage',
          Local.theme: 'Theme',
        },
      };
}
