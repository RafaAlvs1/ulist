import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ulist_project/core/errors.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/dependencies_injection.dart';
import 'package:ulist_project/features/todo/data/models.dart';
import 'package:ulist_project/features/todo/data/repositories.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';

import '../../../../helpers/paths.dart';
import '../../../../helpers/test_mock.mocks.dart';

void main() {
  late MockITodoRemoteDatasource datasource;
  late TodoRepositoryImpl repository;
  late TodoListEntity response;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await serviceLocator(
      isUnitTest: true,
    );
    datasource = MockITodoRemoteDatasource();
    repository = TodoRepositoryImpl(datasource);
    response = TodoListResponse.fromJson(JsonPath.successTodoList.json).toEntity();
  });

  group("todo", () {
    const params = NoParams();

    test('should return todo list when call data is successful', () async {
      // arrange
      when(datasource.list(params)).thenAnswer(
        (_) async => Right(
          TodoListResponse.fromJson(JsonPath.successTodoList.json),
        ),
      );

      // act
      final result = await repository.getTodoList(params);

      // assert
      verify(datasource.list(params));
      expect(result, equals(Right(response)));
    });

    test(
      'should return server failure when call data is unsuccessful',
      () async {
        // arrange
        when(datasource.list(params)).thenAnswer((_) async => const Left(ServerFailure(message: '')));

        // act
        final result = await repository.getTodoList(params);

        // assert
        verify(datasource.list(params));
        expect(result, equals(const Left(ServerFailure(message: ''))));
      },
    );
  });
}
