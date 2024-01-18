import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/features/todo/domain/repositories.dart';

class GetTodoListUsecase extends IStreamUsecase<TodoListEntity, NoParams> {
  final ITodoRepository _repo;
  GetTodoListUsecase(this._repo);

  @override
  Stream<TodoListEntity> call(NoParams params) {
    return _repo.getTodoList(params);
  }
}