import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_template/utils/local_properties.dart';

part 'github_accesstoken_provider.g.dart';

/// GitHubアクセストークンプロバイダー
@Riverpod(keepAlive: true)
class GithubAccessToken extends _$GithubAccessToken {
  @override
  String build() => LocalProperties.GITHUB_ACCESS_TOKEN;

  void update(String token) {
    state = token;
  }
}