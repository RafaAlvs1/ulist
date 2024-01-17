import 'package:flutter_test/flutter_test.dart';
import 'package:ulist_project/core/api.dart';
import 'package:ulist_project/core/usecase.dart';
import 'package:ulist_project/dependencies_injection.dart';
import 'package:ulist_project/features/todo/data/datasources.dart';
import 'package:ulist_project/features/todo/data/models.dart';

import '../../../../helpers/paths.dart';

void main() {
  late TodoRemoteDatasourceFirebaseImpl datasource;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await serviceLocator(
      isUnitTest: true,
    );

    datasource = TodoRemoteDatasourceFirebaseImpl(sl<CloudFirestoreService>());
  });

  group('user', () {
    const params = NoParams();
    final response = TodoListResponse.fromJson(JsonPath.successTodoList.json);

    test('should return todo list success model when response code is 200', () async {
      /// arrange

      // TODO: Criar teste para firestore

      /// act
      // final result = await datasource.list(params);

      /// assert
      // result.fold(
      //   (l) => expect(l, null),
      //   (r) => expect(r, response),
      // );
    });
  });
}
