import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loading_state_provider.g.dart';

@Riverpod(keepAlive: true)
class LoadingState extends _$LoadingState {
  @override
  bool build() => false;

  void show() => state = true;

  void hide() => state = false;
}
