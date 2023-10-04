import 'package:dio/dio.dart';
import 'package:flutter_template/data/api/httpbin/abstract_httpbin_api_client.dart';
import 'package:flutter_template/provider/api/core/user_token.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'httpbin_api_client_provider.g.dart';

@Riverpod(keepAlive: true)
AbstractHttpBinApiClient httpbinApiClient(HttpbinApiClientRef ref) {
  final dio = Dio();
  dio.options.headers['User-Token'] = ref.watch(userTokenProvider);
  return AbstractHttpBinApiClient(dio);
}
