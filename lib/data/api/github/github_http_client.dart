import 'dart:convert';
import 'dart:io';

import 'package:flutter_template/data/api/exceptions.dart';
import 'package:http/http.dart' as http;

/// GitHub API 用の HTTPクライアント
class GitHubHttpClient {
  const GitHubHttpClient({required this.client, required this.token});

  /// HTTPクライアント
  final http.Client client;

  /// アクセストークン
  final String token;

  /// 共通ヘッダを返す
  Map<String, String> get _headers => <String, String>{
        'Accept': 'application/vnd.github.v3+json',
        'Authorization': 'token $token',
      };

  /// GET Request
  Future<T> get<T>({
    required Uri uri,
    required T Function(Map<String, dynamic> data) responseBuilder,
  }) async {
    try {
      // logger.i('Get request: uri = $uri');
      final response = await client.get(uri, headers: _headers);
      // logger.i(
      //   'Get response: code = ${response.statusCode}, '
      //   'length = ${response.contentLength}',
      // );
      switch (response.statusCode) {
        case 200:
          final data = json.decode(response.body) as Map<String, dynamic>;
          return responseBuilder(data);
        case 400:
          throw NetworkException.badRequest();
        case 401:
          throw NetworkException.badCredentials();
        case 403:
          throw NetworkException.maximumNumberOfLoginAttemptsExceeded();
        case 404:
          throw NetworkException.notFound();
        case 422:
          throw NetworkException.validationFailed();
        case 503:
          throw NetworkException.serviceUnavailable();
        default:
          throw NetworkException.unknown();
      }
    } on SocketException {
      // logger.w(e);
      throw NetworkException.noInternetConnection();
    }
  }

  /// GET Raw Request
  Future<String> getRaw({
    required Uri uri,
  }) async {
    try {
      // logger.i('Get raw request: uri = $uri');
      final response = await client.get(uri);
      // logger.i(
      //   'Get raw response: code = ${response.statusCode}, '
      //   'length = ${response.contentLength}',
      // );
      switch (response.statusCode) {
        case 200:
          return response.body;
        case 400:
          throw NetworkException.badRequest();
        case 404:
          throw NetworkException.notFound();
        case 503:
          throw NetworkException.serviceUnavailable();
        default:
          throw NetworkException.unknown();
      }
    } on SocketException {
      // logger.w(e);
      throw NetworkException.noInternetConnection();
    }
  }
}
