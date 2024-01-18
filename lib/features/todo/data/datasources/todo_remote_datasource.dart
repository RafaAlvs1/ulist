import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/features/todo/data/models.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';

abstract class ITodoRemoteDatasource {
  Future<Either<IFailure, TodoListResponse>> list(NoParams params);
  Future<Either<IFailure, bool>> save(SaveTodoParams params);
}
