import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/features/todo/domain/usecases.dart';

part 'todo_list_cubit.freezed.dart';
part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> {
  final GetTodoListUsecase _listUsecase;
  final DeleteTodoUsecase _deleteUsecase;

  TodoListCubit(
    this._listUsecase,
    this._deleteUsecase,
  ) : super(const _Init());

  Stream<List<TodoEntity>> todos() {
    return _listUsecase(const NoParams()).map((event) => event.data ?? []);
  }

  Future<void> delete(String id) async {
    emit(const _Loading());
    final data = await _deleteUsecase(id);

    data.fold(
      (l) {
        if (l is ServerFailure) {
          emit(_Failure(
            l.title,
            l.message ?? '',
          ));
        }
      },
      (r) {
        emit(const _Success());
      },
    );
  }
}
