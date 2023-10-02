import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'httpbin_response.freezed.dart';
part 'httpbin_response.g.dart';

@freezed
class HttpBinResponse with _$HttpBinResponse {
  factory HttpBinResponse({
    required Map<String, String> args, // パラメータ情報
    required Map<String, String> headers, // ヘッダー情報
    Map<String, String>? form, // フォーム情報
    String? data, // データ情報
    Map<String, String>? files, // ファイル情報
    required String origin, // アクセス元のIPアドレス
    required String url, // URL
  }) = _HttpBinResponse;

  factory HttpBinResponse.fromJson(Map<String, dynamic> json) =>
      _$HttpBinResponseFromJson(json);
}
