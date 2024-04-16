enum Language {
  fsLan(title: "跟随系统语言", code: "fs-Lan"),
  zhCN(title: "简体中文", code: "zh-CN"),
  zhHK(title: "繁体中文", code: "zh-HK"),
  enUS(title: "English", code: "en-US");

  final String title;
  final String code;

  const Language({required this.title, required this.code});
}
