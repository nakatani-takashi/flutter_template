// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_up_screen_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartUpScreenEntity {
  AsyncValue<HttpBinResponse> get httpbinResponse =>
      throw _privateConstructorUsedError;
  Future<void> get postAction => throw _privateConstructorUsedError;
  Future<void> get goMain => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StartUpScreenEntityCopyWith<StartUpScreenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartUpScreenEntityCopyWith<$Res> {
  factory $StartUpScreenEntityCopyWith(
          StartUpScreenEntity value, $Res Function(StartUpScreenEntity) then) =
      _$StartUpScreenEntityCopyWithImpl<$Res, StartUpScreenEntity>;
  @useResult
  $Res call(
      {AsyncValue<HttpBinResponse> httpbinResponse,
      Future<void> postAction,
      Future<void> goMain});
}

/// @nodoc
class _$StartUpScreenEntityCopyWithImpl<$Res, $Val extends StartUpScreenEntity>
    implements $StartUpScreenEntityCopyWith<$Res> {
  _$StartUpScreenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? httpbinResponse = null,
    Object? postAction = null,
    Object? goMain = null,
  }) {
    return _then(_value.copyWith(
      httpbinResponse: null == httpbinResponse
          ? _value.httpbinResponse
          : httpbinResponse // ignore: cast_nullable_to_non_nullable
              as AsyncValue<HttpBinResponse>,
      postAction: null == postAction
          ? _value.postAction
          : postAction // ignore: cast_nullable_to_non_nullable
              as Future<void>,
      goMain: null == goMain
          ? _value.goMain
          : goMain // ignore: cast_nullable_to_non_nullable
              as Future<void>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartUpScreenEntityImplCopyWith<$Res>
    implements $StartUpScreenEntityCopyWith<$Res> {
  factory _$$StartUpScreenEntityImplCopyWith(_$StartUpScreenEntityImpl value,
          $Res Function(_$StartUpScreenEntityImpl) then) =
      __$$StartUpScreenEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<HttpBinResponse> httpbinResponse,
      Future<void> postAction,
      Future<void> goMain});
}

/// @nodoc
class __$$StartUpScreenEntityImplCopyWithImpl<$Res>
    extends _$StartUpScreenEntityCopyWithImpl<$Res, _$StartUpScreenEntityImpl>
    implements _$$StartUpScreenEntityImplCopyWith<$Res> {
  __$$StartUpScreenEntityImplCopyWithImpl(_$StartUpScreenEntityImpl _value,
      $Res Function(_$StartUpScreenEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? httpbinResponse = null,
    Object? postAction = null,
    Object? goMain = null,
  }) {
    return _then(_$StartUpScreenEntityImpl(
      httpbinResponse: null == httpbinResponse
          ? _value.httpbinResponse
          : httpbinResponse // ignore: cast_nullable_to_non_nullable
              as AsyncValue<HttpBinResponse>,
      postAction: null == postAction
          ? _value.postAction
          : postAction // ignore: cast_nullable_to_non_nullable
              as Future<void>,
      goMain: null == goMain
          ? _value.goMain
          : goMain // ignore: cast_nullable_to_non_nullable
              as Future<void>,
    ));
  }
}

/// @nodoc

class _$StartUpScreenEntityImpl
    with DiagnosticableTreeMixin
    implements _StartUpScreenEntity {
  _$StartUpScreenEntityImpl(
      {required this.httpbinResponse,
      required this.postAction,
      required this.goMain});

  @override
  final AsyncValue<HttpBinResponse> httpbinResponse;
  @override
  final Future<void> postAction;
  @override
  final Future<void> goMain;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StartUpScreenEntity(httpbinResponse: $httpbinResponse, postAction: $postAction, goMain: $goMain)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StartUpScreenEntity'))
      ..add(DiagnosticsProperty('httpbinResponse', httpbinResponse))
      ..add(DiagnosticsProperty('postAction', postAction))
      ..add(DiagnosticsProperty('goMain', goMain));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartUpScreenEntityImpl &&
            (identical(other.httpbinResponse, httpbinResponse) ||
                other.httpbinResponse == httpbinResponse) &&
            (identical(other.postAction, postAction) ||
                other.postAction == postAction) &&
            (identical(other.goMain, goMain) || other.goMain == goMain));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, httpbinResponse, postAction, goMain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartUpScreenEntityImplCopyWith<_$StartUpScreenEntityImpl> get copyWith =>
      __$$StartUpScreenEntityImplCopyWithImpl<_$StartUpScreenEntityImpl>(
          this, _$identity);
}

abstract class _StartUpScreenEntity implements StartUpScreenEntity {
  factory _StartUpScreenEntity(
      {required final AsyncValue<HttpBinResponse> httpbinResponse,
      required final Future<void> postAction,
      required final Future<void> goMain}) = _$StartUpScreenEntityImpl;

  @override
  AsyncValue<HttpBinResponse> get httpbinResponse;
  @override
  Future<void> get postAction;
  @override
  Future<void> get goMain;
  @override
  @JsonKey(ignore: true)
  _$$StartUpScreenEntityImplCopyWith<_$StartUpScreenEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
