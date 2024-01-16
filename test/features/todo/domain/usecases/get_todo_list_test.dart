import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/features/todo/data/models.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/features/todo/domain/usecases.dart';

import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late GetTodoListUsecase usecase;
  late MockITodoRepository repository;
  const params = NoParams();
  late TodoListEntity response;

  setUp(() {
    response = TodoListResponse.fromJson(JsonPath.successTodoList.json).toEntity();
    repository = MockITodoRepository();
    usecase = GetTodoListUsecase(repository);
  });

  test('should get a todo list from the repository', () async {
    when(repository.getTodoList(params)).thenAnswer((_) async => Right(response));

    final result = await usecase(params);

    expect(result, equals(Right(response)));

    verify(repository.getTodoList(params)).called(1);
  });
}
