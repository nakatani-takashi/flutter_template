import 'package:flutter_template/data/repository/httpbin_repository.dart';
import 'package:flutter_template/domain/core/api/retrofit/result.dart';
import 'package:flutter_template/domain/httpbin/response/httpbin_response.dart';
import 'package:flutter_template/provider/api/httpbin/httpbin_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'httpbin_controller.g.dart';

@riverpod
class HttpbinController extends _$HttpbinController {
  HttpBinRepository get _httpBinRepository =>
      ref.read(httpbinRepositoryProvider);

  @override
  FutureOr<Result<HttpBinResponse>> build(String id) async {
    return await _httpBinRepository.getHttpBin(id);
  }

  FutureOr<Result<HttpBinResponse>> postHttpBin(String id) async {
    return await _httpBinRepository.postHttpBin(id);
  }

  FutureOr<Result<HttpBinResponse>> errorHttpBin() async {
    return await _httpBinRepository.errorHttpBin();
  }
}
