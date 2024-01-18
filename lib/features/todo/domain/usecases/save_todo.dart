import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/features/todo/domain/repositories.dart';

class SaveTodoUsecase extends IUsecase<bool, SaveTodoParams> {
  final ITodoRepository _repo;

  SaveTodoUsecase(this._repo);

  @override
  Future<Either<IFailure, bool>> call(SaveTodoParams params) async {
    return _repo.saveTodo(params);
  }
}
