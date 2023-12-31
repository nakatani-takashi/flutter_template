import 'package:flutter/foundation.dart';
import 'package:flutter_template/domain/entity/httpbin/response/httpbin_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'start_up_screen_entity.freezed.dart';

@freezed
class StartUpScreenEntity with _$StartUpScreenEntity {
  factory StartUpScreenEntity({
    required AsyncValue<HttpBinResponse> httpbinResponse,
    required VoidCallback postAction,
    required VoidCallback goMain,
  }) = _StartUpScreenEntity;
}
