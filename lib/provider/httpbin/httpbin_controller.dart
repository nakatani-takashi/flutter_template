import 'package:flutter_template/data/repository/httpbin_repository.dart';
import 'package:flutter_template/provider/api/httpbin/httpbin_repository_provider.dart';
import 'package:flutter_template/util/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'httpbin_controller.g.dart';

@riverpod
class HttpbinController extends _$HttpbinController {
  HttpBinRepository get _httpBinRepository =>
      ref.read(httpbinRepositoryProvider);

  @override
  FutureOr<void> build() {}

  Future<void> postHttpBin(String id) async {
    await _httpBinRepository
        .postHttpBin(id)
        .then((value) => value.when(success: (success) {
              logger.i("success: $success"); // 成功時
            }, failure: (failure) {
              logger.w("error: ${failure.message}");
            }));
  }

  Future<void> errorHttpBin() async {
    await _httpBinRepository
        .errorHttpBin()
        .then((value) => value.when(success: (success) {
              logger.i("success: $success"); // 成功時
            }, failure: (failure) {
              logger.w("error: ${failure.message}");
            }));
  }
}
