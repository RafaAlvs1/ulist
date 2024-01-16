// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoListResponse _$TodoListResponseFromJson(Map<String, dynamic> json) {
  return _TodoListResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoListResponse {
  List<DataTodo>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoListResponseCopyWith<TodoListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListResponseCopyWith<$Res> {
  factory $TodoListResponseCopyWith(
          TodoListResponse value, $Res Function(TodoListResponse) then) =
      _$TodoListResponseCopyWithImpl<$Res, TodoListResponse>;
  @useResult
  $Res call({List<DataTodo>? data});
}

/// @nodoc
class _$TodoListResponseCopyWithImpl<$Res, $Val extends TodoListResponse>
    implements $TodoListResponseCopyWith<$Res> {
  _$TodoListResponseCopyWithImpl(this._value, this._then);

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
              as List<DataTodo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListResponseImplCopyWith<$Res>
    implements $TodoListResponseCopyWith<$Res> {
  factory _$$TodoListResponseImplCopyWith(_$TodoListResponseImpl value,
          $Res Function(_$TodoListResponseImpl) then) =
      __$$TodoListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataTodo>? data});
}

/// @nodoc
class __$$TodoListResponseImplCopyWithImpl<$Res>
    extends _$TodoListResponseCopyWithImpl<$Res, _$TodoListResponseImpl>
    implements _$$TodoListResponseImplCopyWith<$Res> {
  __$$TodoListResponseImplCopyWithImpl(_$TodoListResponseImpl _value,
      $Res Function(_$TodoListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TodoListResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataTodo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoListResponseImpl extends _TodoListResponse {
  const _$TodoListResponseImpl({final List<DataTodo>? data})
      : _data = data,
        super._();

  factory _$TodoListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoListResponseImplFromJson(json);

  final List<DataTodo>? _data;
  @override
  List<DataTodo>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoListResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListResponseImplCopyWith<_$TodoListResponseImpl> get copyWith =>
      __$$TodoListResponseImplCopyWithImpl<_$TodoListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoListResponseImplToJson(
      this,
    );
  }
}

abstract class _TodoListResponse extends TodoListResponse {
  const factory _TodoListResponse({final List<DataTodo>? data}) =
      _$TodoListResponseImpl;
  const _TodoListResponse._() : super._();

  factory _TodoListResponse.fromJson(Map<String, dynamic> json) =
      _$TodoListResponseImpl.fromJson;

  @override
  List<DataTodo>? get data;
  @override
  @JsonKey(ignore: true)
  _$$TodoListResponseImplCopyWith<_$TodoListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataTodo _$DataTodoFromJson(Map<String, dynamic> json) {
  return _DataTodo.fromJson(json);
}

/// @nodoc
mixin _$DataTodo {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTodoCopyWith<DataTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTodoCopyWith<$Res> {
  factory $DataTodoCopyWith(DataTodo value, $Res Function(DataTodo) then) =
      _$DataTodoCopyWithImpl<$Res, DataTodo>;
  @useResult
  $Res call({int? id, String? title, String? description});
}

/// @nodoc
class _$DataTodoCopyWithImpl<$Res, $Val extends DataTodo>
    implements $DataTodoCopyWith<$Res> {
  _$DataTodoCopyWithImpl(this._value, this._then);

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
              as int?,
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
abstract class _$$DataTodoImplCopyWith<$Res>
    implements $DataTodoCopyWith<$Res> {
  factory _$$DataTodoImplCopyWith(
          _$DataTodoImpl value, $Res Function(_$DataTodoImpl) then) =
      __$$DataTodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? description});
}

/// @nodoc
class __$$DataTodoImplCopyWithImpl<$Res>
    extends _$DataTodoCopyWithImpl<$Res, _$DataTodoImpl>
    implements _$$DataTodoImplCopyWith<$Res> {
  __$$DataTodoImplCopyWithImpl(
      _$DataTodoImpl _value, $Res Function(_$DataTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$DataTodoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
@JsonSerializable()
class _$DataTodoImpl implements _DataTodo {
  const _$DataTodoImpl({this.id, this.title, this.description});

  factory _$DataTodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataTodoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'DataTodo(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataTodoImpl &&
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
  _$$DataTodoImplCopyWith<_$DataTodoImpl> get copyWith =>
      __$$DataTodoImplCopyWithImpl<_$DataTodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataTodoImplToJson(
      this,
    );
  }
}

abstract class _DataTodo implements DataTodo {
  const factory _DataTodo(
      {final int? id,
      final String? title,
      final String? description}) = _$DataTodoImpl;

  factory _DataTodo.fromJson(Map<String, dynamic> json) =
      _$DataTodoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$DataTodoImplCopyWith<_$DataTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
