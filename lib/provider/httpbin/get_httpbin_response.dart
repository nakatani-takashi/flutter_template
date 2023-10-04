import 'package:flutter_template/domain/httpbin/response/httpbin_response.dart';
import 'package:flutter_template/provider/api/httpbin/httpbin_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_httpbin_response.g.dart';

@riverpod
Future<HttpBinResponse> getHttpbinResponse(
    GetHttpbinResponseRef ref, String id) async {
  return await ref.watch(httpbinRepositoryProvider).getHttpBin(id);
}
