///todo: 現状 env/.env.devファイルはないのでファイルを作るところから
enum FlavorType {
  dev(envFileName: "env/.env.dev"),
  stg(envFileName: ""),
  prod(envFileName: ""),
  ;

  final String envFileName;
  const FlavorType({required this.envFileName});
}

/// dart_definesからFlavorを呼び出してもenumとして取得できないので変換するためのもの
FlavorType stringToFlavor(String value) {
  for (var enumValue in FlavorType.values) {
    if (value == enumValue.name) {
      return enumValue;
    }
  }
  return FlavorType.prod;
}
