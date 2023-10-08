import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_screen_entity.freezed.dart';

@freezed
class TemplateScreenEntity with _$TemplateScreenEntity {
  factory TemplateScreenEntity({
    required String pageName,
    required VoidCallback goNext,
  }) = _TemplateScreenEntity;
}
