import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ulist_project/features/todo/domain/usecases.dart';

import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late DeleteTodoUsecase usecase;
  late MockITodoRepository repository;
  const params = "id";
  late bool successResponse;

  setUp(() {
    successResponse = true;
    repository = MockITodoRepository();
    usecase = DeleteTodoUsecase(repository);
  });

  test('should delete a todo to the repository.', () async {
    when(repository.deleteTodo(params)).thenAnswer((_) async => Right(successResponse));

    final result = await usecase(params);

    expect(result, equals(Right(successResponse)));

    verify(repository.deleteTodo(params)).called(1);
  });
}
