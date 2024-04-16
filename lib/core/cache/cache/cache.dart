import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// 存储管理：用于保存key-value键值对数据
/// global：存放的键值对,立即加载箱中的所有数据到内存中，存取方便，但是会占用内存
/// local：存放的键值对,不会立即加载所有数据到内存中。相反，它只会在你请求特定的键时加载相应的数据，需要异步查找
/// encrypt：存放加密的键值对数据，对于敏感重要的信息需要存在这里面
class Cache {
  static const _globalName = 'global';
  static const _localName = 'local';
  static const _encryptName = 'security';

  static final Cache _instance = Cache._();

  static Cache get instance => _instance;

  Cache._();

  late LazyBox _localBox;
  late Box _globalBox;
  late Box _encryptedBox;

  Future<void> init() async {
    await Hive.initFlutter('hive');

    _globalBox = await Hive.openBox(_globalName);
    _localBox = await Hive.openLazyBox(_localName);

    const hiveKey = 'hive_key';
    const secureStorage = FlutterSecureStorage();
    var cachedEncryptionKey = await secureStorage.read(key: hiveKey);
    if (cachedEncryptionKey == null) {
      cachedEncryptionKey = base64UrlEncode(Hive.generateSecureKey());
      await secureStorage.write(key: hiveKey, value: cachedEncryptionKey);
    }

    final encryptionKey = base64Url.decode(cachedEncryptionKey);
    _encryptedBox = await Hive.openBox(_encryptName,
        encryptionCipher: HiveAesCipher(encryptionKey));

    if (kDebugMode) {
      print('global path: ${_globalBox.path}');
      print('local path: ${_localBox.path}');
      print('Encryption key: $encryptionKey');
    }
  }

  putGlobal({dynamic key, dynamic value}) async =>
      await _globalBox.put(key, value);

  containsGlobal(dynamic key) => _globalBox.containsKey(key);

  getGlobal(dynamic key, {dynamic defaultValue}) =>
      _globalBox.get(key, defaultValue: defaultValue);

  deleteGlobal(dynamic key) async => _globalBox.delete(key);

  putLocal({dynamic key, dynamic value}) async => _localBox.put(key, value);

  getLocal(dynamic key, {dynamic defaultValue}) async =>
      _localBox.get(key, defaultValue: defaultValue);

  deleteLocal(dynamic key) async => _localBox.delete(key);

  deleteLocals(List keys) async => _localBox.deleteAll(keys);

  putEncrypt(dynamic key, dynamic value) async =>
      await _encryptedBox.put(key, value);

  getEncrypt(dynamic key, {dynamic defaultValue}) =>
      _encryptedBox.get(key, defaultValue: defaultValue);

  deleteEncrypt(dynamic key) => _encryptedBox.delete(key);

  deleteEncrypts(List keys) async => _encryptedBox.deleteAll(keys);
}
