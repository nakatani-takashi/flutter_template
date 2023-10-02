import 'package:dio/dio.dart' hide Headers; // ヘッダーを使用しない場合はhide以降を削除
import 'package:flutter_template/const/httpbin/httpbin_api_const.dart';
import 'package:flutter_template/domain/httpbin/response/httpbin_response.dart';
import 'package:retrofit/http.dart';

part 'abstract_httpbin_api_client.g.dart';

@RestApi(baseUrl: HttpBinApiConst.baseUrl) // APIのベースURL
abstract class AbstractHttpBinApiClient {
  factory AbstractHttpBinApiClient(Dio dio, {String baseUrl}) =
      _AbstractHttpBinApiClient;

  static const _headers = <String, dynamic>{
    // ヘッダー使用例
    "Content-Type": "application/json",
    "Custom-Header": "Your header"
  };

  @GET(HttpBinApiConst.get) // HttpメソッドをGET
  @Headers(_headers) // ヘッダー情報
  Future<HttpBinResponse> getTest(@Query("id") String id); // リクエスト関数の形式を記載

  @POST(HttpBinApiConst.post) // HttpメソッドをPOST
  @Headers(_headers) // ヘッダー情報
  Future<HttpBinResponse> postTest(@Field("id") String id); // リクエスト関数の形式を記載

  @GET(HttpBinApiConst.error) // HttpメソッドをGET
  @Headers(_headers) // ヘッダー情報
  Future<HttpBinResponse> errorTest(); // リクエスト関数の形式を記載
}
