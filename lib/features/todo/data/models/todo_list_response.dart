import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';

part 'todo_list_response.freezed.dart';
part 'todo_list_response.g.dart';

@freezed
class TodoListResponse with _$TodoListResponse {
  const TodoListResponse._();

  const factory TodoListResponse({
    List<DataTodo>? data,
  }) = _TodoListResponse;

  factory TodoListResponse.fromJson(Map<String, dynamic> json) => _$TodoListResponseFromJson(json);

  TodoListEntity toEntity() {
    final todoList = data!.map<TodoEntity>((model) {
      return TodoEntity(
        id: model.id,
        title: model.title,
        description: model.description,
      );
    }).toList();

    return TodoListEntity(
      data: todoList,
    );
  }
}

@freezed
class DataTodo with _$DataTodo {
  const factory DataTodo({
    int? id,
    String? title,
    String? description,
  }) = _DataTodo;

  factory DataTodo.fromJson(Map<String, dynamic> json) => _$DataTodoFromJson(json);
}
