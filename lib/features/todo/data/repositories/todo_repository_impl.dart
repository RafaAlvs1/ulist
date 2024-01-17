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
  Future<Either<IFailure, TodoListEntity>> getTodoList(NoParams params) async {
    final response = await _datasource.list(params);

    return response.fold(
          (failure) => Left(failure),
          (response) {
        if (response.data?.isEmpty ?? true) {
          return Left(NoDataFailure());
        }
        return Right(response.toEntity());
      },
    );
  }
}
