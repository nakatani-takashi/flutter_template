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
    return client.getTest(id);
  }

  @override
  Future<HttpBinResponse> postHttpBin(String id) async {
    return client.postTest(id);
  }

  @override
  Future<HttpBinResponse> errorHttpBin() async {
    return client.errorTest();
  }
}
