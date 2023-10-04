import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_token_state_provider.g.dart';

@Riverpod(keepAlive: true)
class UserTokenState extends _$UserTokenState {
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
