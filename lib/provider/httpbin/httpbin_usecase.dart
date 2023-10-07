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

  Future<void> postHttpBin(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _httpBinRepository.postHttpBin(id));
  }

  Future<void> errorHttpBin() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _httpBinRepository.errorHttpBin());
  }
}
