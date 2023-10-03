import 'package:flutter_template/domain/core/api/retrofit/result.dart';
import 'package:flutter_template/domain/httpbin/response/httpbin_response.dart';
import 'package:flutter_template/provider/api/httpbin/httpbin_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_httpbin_response.g.dart';

@riverpod
Future<Result<HttpBinResponse>> getHttpbinResponse(
    GetHttpbinResponseRef ref, String id) {
  return ref.watch(httpbinRepositoryProvider).getHttpBin(id);
}
