///to-do: 現状 env/.env.devファイルはないのでファイルを作るところから
///fixme: dotenv使うのやめたし定義変えたほうが良さそう
enum FlavorType {
  dev(envFileName: 'env/.env.dev'),
  stg(envFileName: ''),
  prod(envFileName: ''),
  ;
  const FlavorType({required this.envFileName});
  final String envFileName;
}

/// dart_definesからFlavorを呼び出してもenumとして取得できないので変換するためのもの
FlavorType stringToFlavor(String value) {
  for (final enumValue in FlavorType.values) {
    if (value == enumValue.name) {
      return enumValue;
    }
  }
  return FlavorType.prod;
}
