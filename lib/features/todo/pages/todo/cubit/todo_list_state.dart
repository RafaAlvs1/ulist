part of 'todo_list_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.init() = _Init;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success() = _Success;
  const factory HomeState.failure(String? title, String message) = _Failure;
}
