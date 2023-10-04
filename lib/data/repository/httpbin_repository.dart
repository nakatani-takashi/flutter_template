import 'package:flutter_template/data/api/httpbin/abstract_httpbin_api_client.dart';
import 'package:flutter_template/domain/httpbin/response/httpbin_response.dart';

abstract class _HttpBinRepository {
  Future<HttpBinResponse> getHttpBin(String id);
  Future<HttpBinResponse> postHttpBin(String id);
  Future<HttpBinResponse> errorHttpBin();
}

class HttpBinRepository implements _HttpBinRepository {
  const HttpBinRepository({
    required this.client,
  });

  final AbstractHttpBinApiClient client;

  @override
  Future<HttpBinResponse> getHttpBin(String id) async {
    return await client.getTest(id); // getTest実行
    // .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
    // .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }

  @override
  Future<HttpBinResponse> postHttpBin(String id) async {
    return await client.postTest(id); // postTest実行
    // .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
    // .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }

  @override
  Future<HttpBinResponse> errorHttpBin() async {
    return await client.errorTest(); // error実行
    // .then((test) => Result<HttpBinResponse>.success(test)) // 成功時
    // .catchError((error) => Result<HttpBinResponse>.failure(error)); // 失敗時
  }
}
