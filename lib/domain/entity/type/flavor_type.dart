enum FlavorType {
  dev(envFileName: "env/.env.dev"),
  stg(envFileName: ""),
  prod(envFileName: ""),
  ;

  final String envFileName;
  const FlavorType({required this.envFileName});
}

FlavorType stringToFlavor(String value) {
  for (var enumValue in FlavorType.values) {
    if (value == enumValue.name) {
      return enumValue;
    }
  }
  return FlavorType.prod;
}
