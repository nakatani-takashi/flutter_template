import 'package:dio/dio.dart';
import 'package:flutter_template/data/api/httpbin/httpbin_api_client.dart';
import 'package:flutter_template/domain/entity/httpbin/response/httpbin_response.dart';
import 'package:flutter_template/domain/entity/retrofit/result.dart';

abstract class _HttpBinRepository {
  Future<Result<HttpBinResponse>> getHttpBin(String id);
  Future<Result<HttpBinResponse>> postHttpBin(String id);
  Future<Result<HttpBinResponse>> errorHttpBin();
}

class HttpBinRepository implements _HttpBinRepository {
  final HttpBinApiClient _client;

  HttpBinRepository([HttpBinApiClient? client])
      : _client = client ?? HttpBinApiClient(Dio());

  @override
  Future<Result<HttpBinResponse>> getHttpBin(String id) {
    return _client
        .getTest(id) // getTest実行
        .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
        .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }

  @override
  Future<Result<HttpBinResponse>> postHttpBin(String id) {
    return _client
        .postTest(id) // postTest実行
        .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
        .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }

  @override
  Future<Result<HttpBinResponse>> errorHttpBin() {
    return _client
        .error() // error実行
        .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
        .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }
}
