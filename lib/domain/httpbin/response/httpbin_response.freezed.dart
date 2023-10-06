// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'httpbin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HttpBinResponse _$HttpBinResponseFromJson(Map<String, dynamic> json) {
  return _HttpBinResponse.fromJson(json);
}

/// @nodoc
mixin _$HttpBinResponse {
  Map<String, String> get args => throw _privateConstructorUsedError; // パラメータ情報
  Map<String, String> get headers =>
      throw _privateConstructorUsedError; // ヘッダー情報
  Map<String, String>? get form => throw _privateConstructorUsedError; // フォーム情報
  String? get data => throw _privateConstructorUsedError; // データ情報
  Map<String, String>? get files =>
      throw _privateConstructorUsedError; // ファイル情報
  String get origin => throw _privateConstructorUsedError; // アクセス元のIPアドレス
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpBinResponseCopyWith<HttpBinResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpBinResponseCopyWith<$Res> {
  factory $HttpBinResponseCopyWith(
          HttpBinResponse value, $Res Function(HttpBinResponse) then) =
      _$HttpBinResponseCopyWithImpl<$Res, HttpBinResponse>;
  @useResult
  $Res call(
      {Map<String, String> args,
      Map<String, String> headers,
      Map<String, String>? form,
      String? data,
      Map<String, String>? files,
      String origin,
      String url});
}

/// @nodoc
class _$HttpBinResponseCopyWithImpl<$Res, $Val extends HttpBinResponse>
    implements $HttpBinResponseCopyWith<$Res> {
  _$HttpBinResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
    Object? headers = null,
    Object? form = freezed,
    Object? data = freezed,
    Object? files = freezed,
    Object? origin = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpBinResponseImplCopyWith<$Res>
    implements $HttpBinResponseCopyWith<$Res> {
  factory _$$HttpBinResponseImplCopyWith(_$HttpBinResponseImpl value,
          $Res Function(_$HttpBinResponseImpl) then) =
      __$$HttpBinResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, String> args,
      Map<String, String> headers,
      Map<String, String>? form,
      String? data,
      Map<String, String>? files,
      String origin,
      String url});
}

/// @nodoc
class __$$HttpBinResponseImplCopyWithImpl<$Res>
    extends _$HttpBinResponseCopyWithImpl<$Res, _$HttpBinResponseImpl>
    implements _$$HttpBinResponseImplCopyWith<$Res> {
  __$$HttpBinResponseImplCopyWithImpl(
      _$HttpBinResponseImpl _value, $Res Function(_$HttpBinResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
    Object? headers = null,
    Object? form = freezed,
    Object? data = freezed,
    Object? files = freezed,
    Object? origin = null,
    Object? url = null,
  }) {
    return _then(_$HttpBinResponseImpl(
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      form: freezed == form
          ? _value._form
          : form // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HttpBinResponseImpl
    with DiagnosticableTreeMixin
    implements _HttpBinResponse {
  _$HttpBinResponseImpl(
      {required final Map<String, String> args,
      required final Map<String, String> headers,
      final Map<String, String>? form,
      this.data,
      final Map<String, String>? files,
      required this.origin,
      required this.url})
      : _args = args,
        _headers = headers,
        _form = form,
        _files = files;

  factory _$HttpBinResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpBinResponseImplFromJson(json);

  final Map<String, String> _args;
  @override
  Map<String, String> get args {
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_args);
  }

// パラメータ情報
  final Map<String, String> _headers;
// パラメータ情報
  @override
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

// ヘッダー情報
  final Map<String, String>? _form;
// ヘッダー情報
  @override
  Map<String, String>? get form {
    final value = _form;
    if (value == null) return null;
    if (_form is EqualUnmodifiableMapView) return _form;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// フォーム情報
  @override
  final String? data;
// データ情報
  final Map<String, String>? _files;
// データ情報
  @override
  Map<String, String>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableMapView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

// ファイル情報
  @override
  final String origin;
// アクセス元のIPアドレス
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HttpBinResponse(args: $args, headers: $headers, form: $form, data: $data, files: $files, origin: $origin, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HttpBinResponse'))
      ..add(DiagnosticsProperty('args', args))
      ..add(DiagnosticsProperty('headers', headers))
      ..add(DiagnosticsProperty('form', form))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('files', files))
      ..add(DiagnosticsProperty('origin', origin))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpBinResponseImpl &&
            const DeepCollectionEquality().equals(other._args, _args) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._form, _form) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_args),
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_form),
      data,
      const DeepCollectionEquality().hash(_files),
      origin,
      url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpBinResponseImplCopyWith<_$HttpBinResponseImpl> get copyWith =>
      __$$HttpBinResponseImplCopyWithImpl<_$HttpBinResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpBinResponseImplToJson(
      this,
    );
  }
}

abstract class _HttpBinResponse implements HttpBinResponse {
  factory _HttpBinResponse(
      {required final Map<String, String> args,
      required final Map<String, String> headers,
      final Map<String, String>? form,
      final String? data,
      final Map<String, String>? files,
      required final String origin,
      required final String url}) = _$HttpBinResponseImpl;

  factory _HttpBinResponse.fromJson(Map<String, dynamic> json) =
      _$HttpBinResponseImpl.fromJson;

  @override
  Map<String, String> get args;
  @override // パラメータ情報
  Map<String, String> get headers;
  @override // ヘッダー情報
  Map<String, String>? get form;
  @override // フォーム情報
  String? get data;
  @override // データ情報
  Map<String, String>? get files;
  @override // ファイル情報
  String get origin;
  @override // アクセス元のIPアドレス
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$HttpBinResponseImplCopyWith<_$HttpBinResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
