part of 'edit_todo_cubit.dart';

@freezed
class EditTodoState with _$EditTodoState {
  const factory EditTodoState.init() = _Init;
  const factory EditTodoState.loading() = _Loading;
  const factory EditTodoState.success() = _Success;
  const factory EditTodoState.failure(String? title, String message) = _Failure;
}
