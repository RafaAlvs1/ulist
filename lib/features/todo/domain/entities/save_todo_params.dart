import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_todo_params.freezed.dart';
part 'save_todo_params.g.dart';

@freezed
class SaveTodoParams with _$SaveTodoParams {
  const factory SaveTodoParams({
    int? id,
    required String title,
    required String description,
  }) = _SaveTodoParams;

  factory SaveTodoParams.fromJson(Map<String, dynamic> json) => _$SaveTodoParamsFromJson(json);
}
