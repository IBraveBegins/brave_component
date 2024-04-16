enum Language {
  fsLan(title: "跟随系统语言", countryCode: "fs-Lan"),
  zhCN(title: "简体中文", countryCode: "zh-CN"),
  zhHK(title: "繁体中文", countryCode: "zh-HK"),
  enUS(title: "English", countryCode: "en-US");

  final String title;
  final String countryCode;

  const Language({required this.title, required this.countryCode});
}
