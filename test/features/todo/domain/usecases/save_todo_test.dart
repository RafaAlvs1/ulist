import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/features/todo/domain/usecases.dart';

import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late SaveTodoUsecase usecase;
  late MockITodoRepository repository;
  final params = SaveTodoParams.fromJson(JsonPath.todoInputExample.json);
  late bool successResponse;

  setUp(() {
    successResponse = true;
    repository = MockITodoRepository();
    usecase = SaveTodoUsecase(repository);
  });

  test('should save a todo to the repository.', () async {
    when(repository.saveTodo(params)).thenAnswer((_) async => Right(successResponse));

    final result = await usecase(params);

    expect(result, equals(Right(successResponse)));

    verify(repository.saveTodo(params)).called(1);
  });
}
