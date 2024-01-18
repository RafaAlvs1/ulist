import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';

abstract class ITodoRepository {
  Future<Either<IFailure, TodoListEntity>> getTodoList(NoParams params);
  Future<Either<IFailure, bool>> saveTodo(SaveTodoParams params);
  Future<Either<IFailure, bool>> deleteTodo(String params);
}
