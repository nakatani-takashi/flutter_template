import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_token.g.dart';

@Riverpod(keepAlive: true)
class UserToken extends _$UserToken {
  @override
  String build() => '';

  // ignore: use_setters_to_change_properties
  void updateToken(String token) {
    state = token;
  }

  void deleteToken() {
    state = '';
  }
}
