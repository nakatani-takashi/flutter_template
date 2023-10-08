import 'package:async/async.dart';
import 'package:flutter_template/data/repository/httpbin_repository.dart';
import 'package:flutter_template/domain/usecase/httpbin/httpbin_usecase.dart';
import 'package:flutter_template/provider/api/httpbin/httpbin_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'httpbin_usecase_impl.g.dart';

@riverpod
class HttpbinUseCaseImpl extends _$HttpbinUseCaseImpl
    implements HttpbinUseCase {
  HttpBinRepository get _httpBinRepository =>
      ref.read(httpbinRepositoryProvider);

  @override
  FutureOr<void> build() {}

  final AsyncCache<dynamic> _postCache = AsyncCache.ephemeral();
  @override
  Future<void> postHttpBin(String id) async {
    await _postCache.fetch(() async {
      state = const AsyncLoading();
      state = await AsyncValue.guard(() => _httpBinRepository.postHttpBin(id));
    });
  }

  final AsyncCache<dynamic> _errorCache = AsyncCache.ephemeral();
  @override
  Future<void> errorHttpBin() async {
    await _errorCache.fetch(() async {
      state = const AsyncLoading();
      state = await AsyncValue.guard(() => _httpBinRepository.errorHttpBin());
    });
  }
}
