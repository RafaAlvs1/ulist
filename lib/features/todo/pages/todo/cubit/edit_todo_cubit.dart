import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/features/todo/domain/usecases.dart';

part 'edit_todo_cubit.freezed.dart';
part 'edit_todo_state.dart';

class EditTodoCubit extends Cubit<EditTodoState> {
  final SaveTodoUsecase _usecase;

  EditTodoCubit(this._usecase) : super(const _Init());

  bool loading = false;

  Future<void> save(
    String title,
    String description,
  ) async {
    emit(const _Loading());
    loading = true;

    final data = await _usecase(SaveTodoParams(
      title: title,
      description: description,
    ));

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
        emit(const _Success());
      },
    );
  }
}
