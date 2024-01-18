import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/features/todo/domain/usecases.dart';

part 'todo_list_cubit.freezed.dart';
part 'todo_list_state.dart';

class TodoListCubit extends Cubit<HomeState> {
  final GetTodoListUsecase _usecase;

  TodoListCubit(this._usecase) : super(const _Init());

  bool loading = false;
  List<TodoEntity> _list = [];

  List<TodoEntity> get list {
    final items = _list.toList();
    return items;
  }

  Future<void> fetch() async {
    emit(const _Loading());
    loading = true;

    final data = await _usecase(const NoParams());

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
}
