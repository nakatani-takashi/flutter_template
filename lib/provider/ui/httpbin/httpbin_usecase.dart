import 'package:async/async.dart';
import 'package:flutter_template/data/repository/httpbin_repository.dart';
import 'package:flutter_template/provider/api/httpbin/httpbin_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'httpbin_usecase.g.dart';

abstract class _HttpbinUseCase {
  Future<void> postHttpBin(String id);
  Future<void> errorHttpBin();
}

@riverpod
class HttpbinUseCase extends _$HttpbinUseCase implements _HttpbinUseCase {
  HttpBinRepository get _httpBinRepository =>
      ref.read(httpbinRepositoryProvider);

  @override
  FutureOr<void> build() {}

  final AsyncCache<dynamic> _postCache = AsyncCache.ephemeral();
  @override
  Future<void> postHttpBin(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => _postCache.fetch(() => _httpBinRepository.postHttpBin(id)),
    );
  }

  final AsyncCache<dynamic> _errorCache = AsyncCache.ephemeral();
  @override
  Future<void> errorHttpBin() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => _errorCache.fetch(() => _httpBinRepository.errorHttpBin()),
    );
  }
}
