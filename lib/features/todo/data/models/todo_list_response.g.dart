// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoListResponseImpl _$$TodoListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoListResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataTodo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodoListResponseImplToJson(
        _$TodoListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$DataTodoImpl _$$DataTodoImplFromJson(Map<String, dynamic> json) =>
    _$DataTodoImpl(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DataTodoImplToJson(_$DataTodoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };
