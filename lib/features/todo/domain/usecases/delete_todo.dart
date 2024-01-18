import 'package:dartz/dartz.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/features/todo/domain/repositories.dart';

class DeleteTodoUsecase extends IUsecase<bool, String> {
  final ITodoRepository _repo;

  DeleteTodoUsecase(this._repo);

  @override
  Future<Either<IFailure, bool>> call(String params) async {
    return _repo.deleteTodo(params);
  }
}
