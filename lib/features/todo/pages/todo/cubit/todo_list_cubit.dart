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

  bool loading = false;
  List<TodoEntity> _list = [];

  List<TodoEntity> get list {
    final items = _list.toList();
    return items;
  }

  Future<void> fetch() async {
    emit(const _Loading());
    loading = true;

    final data = await _listUsecase(const NoParams());

    data.fold(
      (l) {
        loading = false;
        if (l is ServerFailure) {
          emit(_Failure(
            l.title,
            l.message ?? '',
          ));
        }
      },
      (r) {
        loading = false;
        _list = r.data?.toList() ?? [];
        emit(const _Success());
      },
    );
  }

  Future<void> delete(String id) async {
    emit(const _Loading());
    loading = true;
    final data = await _deleteUsecase(id);

    data.fold(
      (l) {
        loading = false;
        if (l is ServerFailure) {
          emit(_Failure(
            l.title,
            l.message ?? '',
          ));
        }
      },
      (r) {
        loading = false;
        if (r) {
          _list.removeWhere((element) => element.id == id);
        }
        emit(const _Success());
      },
    );
  }
}
