import 'package:async/async.dart';
import 'package:flutter_template/data/repository/httpbin_repository.dart';
import 'package:flutter_template/provider/api/httpbin/httpbin_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'httpbin_usecase.g.dart';

@riverpod
class HttpbinUseCase extends _$HttpbinUseCase {
  HttpBinRepository get _httpBinRepository =>
      ref.read(httpbinRepositoryProvider);

  @override
  FutureOr<void> build() {}

  final AsyncCache<dynamic> _postCache = AsyncCache.ephemeral();
  Future<void> postHttpBin(String id) async {
    await _postCache.fetch(() async {
      state = const AsyncLoading();
      state = await AsyncValue.guard(() => _httpBinRepository.postHttpBin(id));
    });
  }

  final AsyncCache<dynamic> _errorCache = AsyncCache.ephemeral();
  Future<void> errorHttpBin() async {
    await _errorCache.fetch(() async {
      state = const AsyncLoading();
      state = await AsyncValue.guard(() => _httpBinRepository.errorHttpBin());
    });
  }
}
