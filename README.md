# brave_component

# 1.序列化
## json_model 一行命令，将Json文件转为Dart model类。

### 安装

    dependencies:
    #json序列化
    json_annotation: ^4.8.1
    
    dev_dependencies:
    json_model: ^1.0.0
    json_serializable: ^6.7.1

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

# 2.多语言

## flutter_localizations intl

### 安装 flutter_localizations和intl，并启动generate标志
    dependencies:
    flutter_localizations:
    sdk: flutter
    intl: any

    flutter:
    uses-material-design: true
    generate: true
### 使用

1. lib文件夹中新建文件夹l10n/arb，并在其中创建app_en.arb 和app_zh.arb文件
2. 项目的根目录中添加l10n.yaml
3. 添加完成之后，执行命令`flutter gen-l10n`，执行命令`flutter run`，.dart_tools会自动生成相关的文件
4. MaterialApp或GetMaterialApp配置国际化字段
5. 调用:
   - 直接使用 Text(AppLocalizations.of(context).helloWorld)
   - 扩展使用   
   扩展BuildContext  
   ```
   extension BuildContextExtension on BuildContext {    
       AppLocalizations get l10n => AppLocalizations.of(this);    
   }
   ```
   使用  
   Text(context.l10n.helloWorld)  

### 参考
- [多语言配置](https://www.jianshu.com/p/6b9c81401469)
- [国际化多语言支持方案](https://blog.csdn.net/duanwei1988/article/details/135536458)
- [语言国际化状态管理](https://blog.csdn.net/qq_38774121/article/details/115540857)
### 多语言end>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

