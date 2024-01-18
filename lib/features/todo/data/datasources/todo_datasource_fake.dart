import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/errors/failure.dart';
import 'package:ulist_project/core/usecase/usecase.dart';
import 'package:ulist_project/features/todo/data/datasources/todo_remote_datasource.dart';
import 'package:ulist_project/features/todo/data/models/todo_list_response.dart';
import 'package:ulist_project/features/todo/domain/entities/save_todo_params.dart';

TodoListResponse fakeData = TodoListResponse.fromJson({
  "data": List.generate(20, (index) {
    return {
      "id": "${index + 1}",
      "title": "TODO ${(index + 1).toString().padLeft(3, '0')}",
      "description":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    };
  }).toList()
});

class TodoRemoteDatasourceFake implements ITodoRemoteDatasource {
  @override
  Future<Either<IFailure, TodoListResponse>> list(NoParams params) async {
    await Future.delayed(const Duration(seconds: 2));
    return Right(fakeData);
  }

  @override
  Future<Either<IFailure, bool>> save(SaveTodoParams params) async {
    await Future.delayed(const Duration(seconds: 2));
    return const Right(true);
  }

  @override
  Future<Either<IFailure, bool>> delete(String params) async {
    await Future.delayed(const Duration(seconds: 2));
    return const Right(true);
  }
}
