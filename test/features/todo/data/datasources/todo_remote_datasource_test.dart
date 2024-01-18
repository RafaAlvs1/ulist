import 'package:flutter_test/flutter_test.dart';
import 'package:ulist_project/core/api.dart';
import 'package:ulist_project/dependencies_injection.dart';
import 'package:ulist_project/features/todo/data/datasources.dart';

void main() {
  late TodoRemoteDatasourceFirebaseImpl datasource;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await serviceLocator(isUnitTest: true);

    datasource = TodoRemoteDatasourceFirebaseImpl(sl<CloudFirestoreService>());
  });

  group('todo', () {
    // TODO: Criar teste para firestore
    test('should return todo list success model when response code is 200', () async {
      /// arrange

      /// act

      /// assert
    });
  });
}
