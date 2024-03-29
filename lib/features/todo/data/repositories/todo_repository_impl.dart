import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/core/usecase/usecase.dart';
import 'package:ulist_project/features/todo/data/datasources/todo_remote_datasource.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/features/todo/domain/repositories.dart';

class TodoRepositoryImpl implements ITodoRepository {
  final ITodoRemoteDatasource _datasource;

  const TodoRepositoryImpl(this._datasource);

  @override
  Stream<TodoListEntity> getTodoList(NoParams params) {
    return _datasource.list(params).map((event) => event.toEntity());
  }

  @override
  Future<Either<IFailure, bool>> saveTodo(SaveTodoParams params) async {
      final response = await _datasource.save(params);

      return response.fold(
        (failure) => Left(failure),
        (response) => Right(response),
      );
  }

  @override
  Future<Either<IFailure, bool>> deleteTodo(String params) async {
    final response = await _datasource.delete(params);

    return response.fold(
          (failure) => Left(failure),
          (response) => Right(response),
    );
  }
}
