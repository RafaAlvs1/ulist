import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class TodoListEntity with _$TodoListEntity {
  const factory TodoListEntity({
    List<TodoEntity>? data,
  }) = _TodoListEntity;
}

@freezed
class TodoEntity extends Equatable with _$TodoEntity {
  const TodoEntity._();

  const factory TodoEntity({
    int? id,
    String? title,
    String? description,
  }) = _TodoEntity;

  @override
  List<Object?> get props => [
        id,
        title,
        description,
      ];
}
