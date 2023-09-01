import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_client_provider.g.dart';

/// HTTPクライアントプロバイダー
@Riverpod(keepAlive: true)
Client httpClient(HttpClientRef ref) => Client();