import 'package:flutter_template/data/repository/httpbin_repository.dart';
import 'package:flutter_template/provider/api/httpbin/httpbin_api_client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'httpbin_repository_provider.g.dart';

@riverpod
HttpBinRepository httpbinRepository(HttpbinRepositoryRef ref) =>
    HttpBinRepository(client: ref.watch(httpbinApiClientProvider));