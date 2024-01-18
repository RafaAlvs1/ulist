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
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, bool>> save(SaveTodoParams params) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, bool>> delete(String params) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
