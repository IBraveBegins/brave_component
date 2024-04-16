import 'package:flutter/material.dart';

import 'core/cache/cache/cache.dart';
import 'l10nApp.dart';

void main() async {
  await Cache.instance.init();
  runApp(L10nApp()); //flutter_localizations与GetX配合版的多语言
}
