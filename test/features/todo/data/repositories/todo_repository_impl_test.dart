import 'dart:async';

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

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await serviceLocator(isUnitTest: true);
    datasource = MockITodoRemoteDatasource();
    repository = TodoRepositoryImpl(datasource);
  });

  group("todo", () {
    const params = NoParams();
    final response = TodoListResponse.fromJson(JsonPath.successTodoList.json);

    test('should return todo list when call data is successful', () async {
      // arrange
      final controller = StreamController<TodoListResponse>();
      when(datasource.list(params)).thenAnswer((_) => controller.stream);

      // act
      repository.getTodoList(params);
      controller.add(response);

      // assert
      verify(datasource.list(params)).called(1);
      expect(datasource.list(params), emitsInOrder([response]));
    });
  });

  group("save", () {
    final params = SaveTodoParams.fromJson(JsonPath.todoInputExample.json);
    const response = true;

    test('should return true when call data is successful', () async {
      // arrange
      when(datasource.save(params)).thenAnswer(
        (_) async => const Right(response),
      );

      // act
      final result = await repository.saveTodo(params);

      // assert
      verify(datasource.save(params));
      expect(result, equals(const Right(response)));
    });

    test('should return server failure when call data is unsuccessful', () async {
      // arrange
      when(datasource.save(params)).thenAnswer(
        (_) async => const Left(ServerFailure(message: '')),
      );

      // act
      final result = await repository.saveTodo(params);

      // assert
      verify(datasource.save(params));
      expect(result, equals(const Left(ServerFailure(message: ''))));
    });
  });

  group("delete", () {
    const params = "id";
    const response = true;

    test('should return true when call data is successful', () async {
      // arrange
      when(datasource.delete(params)).thenAnswer(
        (_) async => const Right(response),
      );

      // act
      final result = await repository.deleteTodo(params);

      // assert
      verify(datasource.delete(params));
      expect(result, equals(const Right(response)));
    });

    test('should return server failure when call data is unsuccessful', () async {
      // arrange
      when(datasource.delete(params)).thenAnswer(
        (_) async => const Left(ServerFailure(message: '')),
      );

      // act
      final result = await repository.deleteTodo(params);

      // assert
      verify(datasource.delete(params));
      expect(result, equals(const Left(ServerFailure(message: ''))));
    });
  });
}
