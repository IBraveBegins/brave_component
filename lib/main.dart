import 'package:flutter/material.dart';

import 'app.dart';
import 'core/cache/cache/cache.dart';
import 'l10n_app.dart';

void main() async {
  await Cache.instance.init();
  // runApp(L10nApp()); //flutter_localizations与GetX配合版的多语言
  runApp(const App()); //GetX版多语言
}
