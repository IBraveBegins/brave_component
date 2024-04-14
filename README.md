# 三方组件库用法及example

# 一.序列化
## json_model 一行命令，将Json文件转为Dart model类。

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

## build_runner 手动写model类，命令行生成.g.dart序列化类

### 安装

    dev_dependencies:
    build_runner: ^2.4.9

### 使用
1. 一次性构建
`flutter packages pub run build_runner build`
2. 删除后重新构建
`flutter packages pub run build_runner build --delete-conflicting-outputs`
3. 文件监听，自动为后续创建得实体类生成对应得.g.dart文件
`flutter packages pub run build_runner watch`

### 参考
- [Pub: json_model](https://pub.dev/packages/json_model)
- [使用json_annotation创建数据模型](https://www.jianshu.com/p/d89e5c642660)
### 序列化 end>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# 二.多语言

## flutter_localizations intl

### 安装 flutter_localizations和intl，并启动generate标志
```
dependencies:
flutter_localizations:
sdk: flutter
intl: any

flutter:
uses-material-design: true
generate: true
```
### 使用

1. lib文件夹中新建文件夹l10n/arb，并在其中创建app_en.arb 和app_zh.arb文件
2. 项目的根目录中添加l10n.yaml
3. 添加完成之后，执行命令`flutter gen-l10n`，执行命令`flutter run`，.dart_tools会自动生成相关的文件
4. MaterialApp或GetMaterialApp配置国际化字段
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

### 参考
- [多语言配置](https://www.jianshu.com/p/6b9c81401469)
- [国际化多语言支持方案](https://blog.csdn.net/duanwei1988/article/details/135536458)
- [语言国际化状态管理](https://blog.csdn.net/qq_38774121/article/details/115540857)
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

# 四、FlutterAssetRefGenerator 图片资源自动生成引用路径的插件
- [AssetRefGenerator](https://github.com/AndrewShen812/AssetsRefGenerator/blob/master/README_zh.md)
### AssetRefGenerator end>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
