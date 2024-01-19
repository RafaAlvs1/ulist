import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/api.dart';
import 'package:ulist_project/core/errors/failure.dart';
import 'package:ulist_project/core/usecase/usecase.dart';
import 'package:ulist_project/features/todo/data/datasources.dart';
import 'package:ulist_project/features/todo/data/models.dart';
import 'package:ulist_project/features/todo/domain/entities/save_todo_params.dart';

class TodoRemoteDatasourceFirebaseImpl extends ITodoRemoteDatasource {
  final CloudFirestoreService _client;

  TodoRemoteDatasourceFirebaseImpl(this._client);

  @override
  Stream<TodoListResponse> list(NoParams params) {
    return _client.getList(
      ApiPath.todos,
      converter: (response) => TodoListResponse.fromJson(response),
    );
  }

  @override
  Future<Either<IFailure, bool>> save(SaveTodoParams params) {
    return _client.save(
      ApiPath.todos,
      params.id,
      params,
    );
  }

  @override
  Future<Either<IFailure, bool>> delete(String params) {
    return _client.delete(
      ApiPath.todos,
      params,
    );
  }
}
