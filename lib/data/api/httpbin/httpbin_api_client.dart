import 'package:dio/dio.dart' hide Headers;// ヘッダーを使用しない場合はhide以降を削除
import 'package:flutter_template/domain/entity/httpbin/response/httpbin_response.dart';
import 'package:retrofit/http.dart';

part 'httpbin_api_client.g.dart';

@RestApi(baseUrl: "https://httpbin.org") // APIのベースURL
abstract class TestApiClient {
  factory TestApiClient(Dio dio, {String baseUrl}) = _TestApiClient;
 
  static const _headers = <String, dynamic>{ // ヘッダー使用例
    "Content-Type": "application/json",
    "Custom-Header": "Your header"
  };
 
  @GET("/get") // HttpメソッドをGET
  @Headers(_headers) // ヘッダー情報
  Future<HttpBinResponse> getTest(@Query("id") String id); // リクエスト関数の形式を記載
 
  @POST("/post") // HttpメソッドをPOST
  @Headers(_headers) // ヘッダー情報
  Future<HttpBinResponse> postTest(@Field("id") String id); // リクエスト関数の形式を記載
 
  @GET("/status/404") // HttpメソッドをGET
  @Headers(_headers) // ヘッダー情報
  Future<HttpBinResponse> error(); // リクエスト関数の形式を記載
}