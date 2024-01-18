part of 'todo_list_cubit.dart';

@freezed
class TodoListState with _$TodoListState {
  const factory TodoListState.init() = _Init;
  const factory TodoListState.loading() = _Loading;
  const factory TodoListState.success() = _Success;
  const factory TodoListState.failure(String? title, String message) = _Failure;
}
