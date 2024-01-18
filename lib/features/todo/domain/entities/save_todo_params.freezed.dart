// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_todo_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveTodoParams _$SaveTodoParamsFromJson(Map<String, dynamic> json) {
  return _SaveTodoParams.fromJson(json);
}

/// @nodoc
mixin _$SaveTodoParams {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveTodoParamsCopyWith<SaveTodoParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveTodoParamsCopyWith<$Res> {
  factory $SaveTodoParamsCopyWith(
          SaveTodoParams value, $Res Function(SaveTodoParams) then) =
      _$SaveTodoParamsCopyWithImpl<$Res, SaveTodoParams>;
  @useResult
  $Res call({int? id, String title, String description});
}

/// @nodoc
class _$SaveTodoParamsCopyWithImpl<$Res, $Val extends SaveTodoParams>
    implements $SaveTodoParamsCopyWith<$Res> {
  _$SaveTodoParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveTodoParamsImplCopyWith<$Res>
    implements $SaveTodoParamsCopyWith<$Res> {
  factory _$$SaveTodoParamsImplCopyWith(_$SaveTodoParamsImpl value,
          $Res Function(_$SaveTodoParamsImpl) then) =
      __$$SaveTodoParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title, String description});
}

/// @nodoc
class __$$SaveTodoParamsImplCopyWithImpl<$Res>
    extends _$SaveTodoParamsCopyWithImpl<$Res, _$SaveTodoParamsImpl>
    implements _$$SaveTodoParamsImplCopyWith<$Res> {
  __$$SaveTodoParamsImplCopyWithImpl(
      _$SaveTodoParamsImpl _value, $Res Function(_$SaveTodoParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$SaveTodoParamsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveTodoParamsImpl implements _SaveTodoParams {
  const _$SaveTodoParamsImpl(
      {this.id, required this.title, required this.description});

  factory _$SaveTodoParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveTodoParamsImplFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'SaveTodoParams(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTodoParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTodoParamsImplCopyWith<_$SaveTodoParamsImpl> get copyWith =>
      __$$SaveTodoParamsImplCopyWithImpl<_$SaveTodoParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveTodoParamsImplToJson(
      this,
    );
  }
}

abstract class _SaveTodoParams implements SaveTodoParams {
  const factory _SaveTodoParams(
      {final int? id,
      required final String title,
      required final String description}) = _$SaveTodoParamsImpl;

  factory _SaveTodoParams.fromJson(Map<String, dynamic> json) =
      _$SaveTodoParamsImpl.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$SaveTodoParamsImplCopyWith<_$SaveTodoParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
