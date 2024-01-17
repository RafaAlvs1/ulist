import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/api.dart';
import 'package:ulist_project/core/errors/failure.dart';
import 'package:ulist_project/core/usecase/usecase.dart';
import 'package:ulist_project/features/todo/data/datasources.dart';
import 'package:ulist_project/features/todo/data/models.dart';

class TodoRemoteDatasourceFirebaseImpl extends ITodoRemoteDatasource {
  final CloudFirestoreService _client;

  TodoRemoteDatasourceFirebaseImpl(this._client);

  @override
  Future<Either<IFailure, TodoListResponse>> list(NoParams params) async {
    final response = await _client.getList(
      ApiPath.todos,
      converter: (response) => TodoListResponse.fromJson(response),
    );
    return response;
  }
}
