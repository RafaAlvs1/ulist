// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoListEntity {
  List<TodoEntity>? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListEntityCopyWith<TodoListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListEntityCopyWith<$Res> {
  factory $TodoListEntityCopyWith(
          TodoListEntity value, $Res Function(TodoListEntity) then) =
      _$TodoListEntityCopyWithImpl<$Res, TodoListEntity>;
  @useResult
  $Res call({List<TodoEntity>? data});
}

/// @nodoc
class _$TodoListEntityCopyWithImpl<$Res, $Val extends TodoListEntity>
    implements $TodoListEntityCopyWith<$Res> {
  _$TodoListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListEntityImplCopyWith<$Res>
    implements $TodoListEntityCopyWith<$Res> {
  factory _$$TodoListEntityImplCopyWith(_$TodoListEntityImpl value,
          $Res Function(_$TodoListEntityImpl) then) =
      __$$TodoListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TodoEntity>? data});
}

/// @nodoc
class __$$TodoListEntityImplCopyWithImpl<$Res>
    extends _$TodoListEntityCopyWithImpl<$Res, _$TodoListEntityImpl>
    implements _$$TodoListEntityImplCopyWith<$Res> {
  __$$TodoListEntityImplCopyWithImpl(
      _$TodoListEntityImpl _value, $Res Function(_$TodoListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TodoListEntityImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>?,
    ));
  }
}

/// @nodoc

class _$TodoListEntityImpl implements _TodoListEntity {
  const _$TodoListEntityImpl({final List<TodoEntity>? data}) : _data = data;

  final List<TodoEntity>? _data;
  @override
  List<TodoEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoListEntity(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListEntityImplCopyWith<_$TodoListEntityImpl> get copyWith =>
      __$$TodoListEntityImplCopyWithImpl<_$TodoListEntityImpl>(
          this, _$identity);
}

abstract class _TodoListEntity implements TodoListEntity {
  const factory _TodoListEntity({final List<TodoEntity>? data}) =
      _$TodoListEntityImpl;

  @override
  List<TodoEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TodoListEntityImplCopyWith<_$TodoListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoEntityCopyWith<TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEntityCopyWith<$Res> {
  factory $TodoEntityCopyWith(
          TodoEntity value, $Res Function(TodoEntity) then) =
      _$TodoEntityCopyWithImpl<$Res, TodoEntity>;
  @useResult
  $Res call({String? id, String? title, String? description});
}

/// @nodoc
class _$TodoEntityCopyWithImpl<$Res, $Val extends TodoEntity>
    implements $TodoEntityCopyWith<$Res> {
  _$TodoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoEntityImplCopyWith<$Res>
    implements $TodoEntityCopyWith<$Res> {
  factory _$$TodoEntityImplCopyWith(
          _$TodoEntityImpl value, $Res Function(_$TodoEntityImpl) then) =
      __$$TodoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title, String? description});
}

/// @nodoc
class __$$TodoEntityImplCopyWithImpl<$Res>
    extends _$TodoEntityCopyWithImpl<$Res, _$TodoEntityImpl>
    implements _$$TodoEntityImplCopyWith<$Res> {
  __$$TodoEntityImplCopyWithImpl(
      _$TodoEntityImpl _value, $Res Function(_$TodoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$TodoEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TodoEntityImpl extends _TodoEntity {
  const _$TodoEntityImpl({this.id, this.title, this.description}) : super._();

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoEntityImplCopyWith<_$TodoEntityImpl> get copyWith =>
      __$$TodoEntityImplCopyWithImpl<_$TodoEntityImpl>(this, _$identity);
}

abstract class _TodoEntity extends TodoEntity {
  const factory _TodoEntity(
      {final String? id,
      final String? title,
      final String? description}) = _$TodoEntityImpl;
  const _TodoEntity._() : super._();

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$TodoEntityImplCopyWith<_$TodoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
