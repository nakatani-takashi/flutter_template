import 'package:flutter_template/data/api/httpbin/abstract_httpbin_api_client.dart';
import 'package:flutter_template/domain/entity/httpbin/response/httpbin_response.dart';
import 'package:flutter_template/domain/entity/retrofit/result.dart';

abstract class _HttpBinRepository {
  Future<Result<HttpBinResponse>> getHttpBin(String id);
  Future<Result<HttpBinResponse>> postHttpBin(String id);
  Future<Result<HttpBinResponse>> errorHttpBin();
}

class HttpBinRepository implements _HttpBinRepository {
  const HttpBinRepository({
    required this.client,
  });

  final AbstractHttpBinApiClient client;

  @override
  Future<Result<HttpBinResponse>> getHttpBin(String id) {
    return client
        .getTest(id) // getTest実行
        .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
        .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }

  @override
  Future<Result<HttpBinResponse>> postHttpBin(String id) {
    return client
        .postTest(id) // postTest実行
        .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
        .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }

  @override
  Future<Result<HttpBinResponse>> errorHttpBin() {
    return client
        .errorTest() // error実行
        .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
        .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }
}
