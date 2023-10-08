// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_screen_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TemplateScreenEntity {
  String get pageName => throw _privateConstructorUsedError;
  VoidCallback get goNext => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TemplateScreenEntityCopyWith<TemplateScreenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateScreenEntityCopyWith<$Res> {
  factory $TemplateScreenEntityCopyWith(TemplateScreenEntity value,
          $Res Function(TemplateScreenEntity) then) =
      _$TemplateScreenEntityCopyWithImpl<$Res, TemplateScreenEntity>;
  @useResult
  $Res call({String pageName, VoidCallback goNext});
}

/// @nodoc
class _$TemplateScreenEntityCopyWithImpl<$Res,
        $Val extends TemplateScreenEntity>
    implements $TemplateScreenEntityCopyWith<$Res> {
  _$TemplateScreenEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageName = null,
    Object? goNext = null,
  }) {
    return _then(_value.copyWith(
      pageName: null == pageName
          ? _value.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String,
      goNext: null == goNext
          ? _value.goNext
          : goNext // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateScreenEntityImplCopyWith<$Res>
    implements $TemplateScreenEntityCopyWith<$Res> {
  factory _$$TemplateScreenEntityImplCopyWith(_$TemplateScreenEntityImpl value,
          $Res Function(_$TemplateScreenEntityImpl) then) =
      __$$TemplateScreenEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pageName, VoidCallback goNext});
}

/// @nodoc
class __$$TemplateScreenEntityImplCopyWithImpl<$Res>
    extends _$TemplateScreenEntityCopyWithImpl<$Res, _$TemplateScreenEntityImpl>
    implements _$$TemplateScreenEntityImplCopyWith<$Res> {
  __$$TemplateScreenEntityImplCopyWithImpl(_$TemplateScreenEntityImpl _value,
      $Res Function(_$TemplateScreenEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageName = null,
    Object? goNext = null,
  }) {
    return _then(_$TemplateScreenEntityImpl(
      pageName: null == pageName
          ? _value.pageName
          : pageName // ignore: cast_nullable_to_non_nullable
              as String,
      goNext: null == goNext
          ? _value.goNext
          : goNext // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$TemplateScreenEntityImpl
    with DiagnosticableTreeMixin
    implements _TemplateScreenEntity {
  _$TemplateScreenEntityImpl({required this.pageName, required this.goNext});

  @override
  final String pageName;
  @override
  final VoidCallback goNext;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TemplateScreenEntity(pageName: $pageName, goNext: $goNext)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TemplateScreenEntity'))
      ..add(DiagnosticsProperty('pageName', pageName))
      ..add(DiagnosticsProperty('goNext', goNext));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateScreenEntityImpl &&
            (identical(other.pageName, pageName) ||
                other.pageName == pageName) &&
            (identical(other.goNext, goNext) || other.goNext == goNext));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageName, goNext);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateScreenEntityImplCopyWith<_$TemplateScreenEntityImpl>
      get copyWith =>
          __$$TemplateScreenEntityImplCopyWithImpl<_$TemplateScreenEntityImpl>(
              this, _$identity);
}

abstract class _TemplateScreenEntity implements TemplateScreenEntity {
  factory _TemplateScreenEntity(
      {required final String pageName,
      required final VoidCallback goNext}) = _$TemplateScreenEntityImpl;

  @override
  String get pageName;
  @override
  VoidCallback get goNext;
  @override
  @JsonKey(ignore: true)
  _$$TemplateScreenEntityImplCopyWith<_$TemplateScreenEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
