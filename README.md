# 三方组件库用法及实例

# 一.序列化
## 一、json_model 一行命令，将json文件转为Dart model类及.g.dart。

### 安装
```
dependencies:
json_annotation: ^4.8.1
    
dev_dependencies:
json_model: ^1.0.0
json_serializable: ^6.7.1
```
### 使用

1. 在工程根目录下创建一个名为 `jsons` 的目录;
2. 创建或拷贝Json文件到"jsons" 目录中 ;
3. 运行 `pub run json_model` (Dart VM工程)or
   `flutter packages pub run json_model`(Flutter中) 命令生成Dart model类，
   生成的文件默认在"lib/models"目录下

## 二、build_runner 手动写model类，命令行生成.g.dart序列化类

### 安装
```
dependencies:
json_annotation: ^4.8.1

dev_dependencies:
build_runner: ^2.4.9
json_serializable: ^6.7.1
```

### 使用
1. lib下新建models文件夹，创建model类，根据需要执行下面命令行 
2. 一次性构建
`flutter packages pub run build_runner build`
3. 删除后重新构建
`flutter packages pub run build_runner build --delete-conflicting-outputs`
4. 文件监听，自动为后续创建得实体类生成对应得.g.dart文件
`flutter packages pub run build_runner watch`

### 参考
- [Pub: json_model](https://pub.dev/packages/json_model)
- [使用json_annotation创建数据模型](https://www.jianshu.com/p/d89e5c642660)
### 序列化 end>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# 二.多语言

## 一、flutter_localizations 与 GetX 配合版的多语言

### 安装 flutter_localizations和intl，并启动generate标志
```
dependencies:
flutter_localizations:
sdk: flutter
intl: any
get: ^4.6.6

flutter:
uses-material-design: true
generate: true
```
### 使用

1. lib文件夹中新建文件夹l10n/arb，并在其中创建app_en.arb 和app_zh.arb文件
2. 项目的根目录中添加l10n.yaml
3. 添加完成之后，执行命令`flutter gen-l10n`，执行命令`flutter run`，.dart_tools会自动生成相关的文件
4. MaterialApp改成GetMaterialApp配置国际化字段
5. 调用:
   1. 直接使用 Text(AppLocalizations.of(context).helloWorld)
   2. 扩展使用   
     - 扩展BuildContext
   ```
   extension BuildContextExtension on BuildContext {    
       AppLocalizations get l10n => AppLocalizations.of(this);    
   }
   ```
     - 使用   
     Text(context.l10n.helloWorld)  
   
6. 例子 main入口 
     - 打开这一行   runApp(L10nApp()); //flutter_localizations与GetX配合版的多语言 切换语言时需要自己控制状态
     - 注释掉这一行 runApp(App()); //GetX多语言
### 参考
- [多语言配置](https://www.jianshu.com/p/6b9c81401469)
- [国际化多语言支持方案](https://blog.csdn.net/duanwei1988/article/details/135536458)
- [语言国际化状态管理](https://blog.csdn.net/qq_38774121/article/details/115540857)

## 二、GetX 版的多语言

### 安装 GetX
```
dependencies:
get: ^4.6.6
```
### 使用
1. 语言配置 在lib/core下创建一个language文件夹，文件夹下创建一个local.dart文件
2. language文件夹下创建一个messages.dart文件
3. 主入口MaterialApp改成GetMaterialApp
4. 配置
   ```
   translations: Messages(),//所有的多语言翻译资源
   locale: Get.deviceLocale,//跟随系统设置语言 持久化以后这里改一下
   fallbackLocale: Locale("zh", "CN"),//未提供当前Locale翻译时，备用的翻译
   ```
      - 使用   
      Text(Local.helloWorld.tr)  
5. 例子 main入口
   - 注释掉这一行   runApp(L10nApp()); //flutter_localizations与GetX配合版的多语言 切换语言时需要自己控制状态
   - 打开这一行 runApp(App()); //GetX多语言
### 持久化 参考代码
### 参考
- [Flutter 多语言、主题切换之GetX库](https://blog.csdn.net/qq_38436214/article/details/136345295)
### 多语言end>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# 三、GetX状态管理及路由管理用法

### 安装
```
dependencies:
get: ^4.6.6
```

### 使用
1. 安装GetX插件，快捷生成模版代码
2. 主入口MaterialApp改成GetMaterialApp
3. 定义路由常量RoutePath类、别名映射页面RoutePages类
4. 初始initialRoute，getPages。
5. Binding统一管理GetxController，具体用法参考呆呆666的文章Flutter GetX使用---简洁的魅力，也是GetX插件开发者

### 参考
- [Flutter GetX使用---简洁的魅力！](https://juejin.cn/post/6924104248275763208#heading-25)
### GetX end>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# 四、自动生成图片资源索引插件
## 一、FlutterAssetRefGenerator 插件（windows上 点击生成图片索引按钮后，pubspec.yaml 会出现中文乱码，需要手动改乱码；mac上没问题。 ）
1. 安装FlutterAssetRefGenerator插件
2. 根目录下新建assets/images文件
3. 根目录新建.packages File
4. 点击 IDE 工具栏的 ![小文件夹图标](./assets/images/ag.png)按钮。 
5. 打开 pubspec.yaml 文件中已经自动添加了资源文件的声明。且在lib下生成了一个res.dart文件，文件里就是图片的索引。
## 使用
- ImageIcon(
  AssetImage(Res.nav_back),
  size: 20,
  )
## 参考
- [AssetRefGenerator](https://github.com/AndrewShen812/AssetsRefGenerator/blob/master/README_zh.md)

## 二、FlutterAssetsGenerator 插件 （没乱码，生成的图片索引命名是小驼峰）
1. 安装FlutterAssetsGenerator 插件
2. 根目录下assets/images
3. 点击images文件夹，鼠标右键 点击Flutter：Configuring Paths，pubspec.yaml里自动生成图片依赖路径
4. File > Settings > Tools > FlutterAssetsGenerator 可以修改将要生成的图片索引文件名字
5. 快捷键option/alt + G 生成图片索引文件
## 使用
- ImageIcon(
  AssetImage(R.imagesNavBack),
  size: 20,
  )
## 参考
- [FlutterAssetsGenerator](https://juejin.cn/post/6898542896274735117)
### 图片资源自动生成索引插件 end>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
