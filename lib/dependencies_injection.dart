import 'package:get_it/get_it.dart';
import 'package:ulist_project/core/api.dart';
import 'package:ulist_project/features/todo.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator({
  bool isUnitTest = false,
}) async {
  /// For unit testing only
  if (isUnitTest) {
    await sl.reset();
  }

  sl.registerSingleton<CloudFirestoreService>(CloudFirestoreService(isUnitTest: isUnitTest));

  _todo();
}

void _todo() {
  /// Datasources
  sl.registerLazySingleton<ITodoRemoteDatasource>(() => TodoRemoteDatasourceFake());

  /// Repositories
  sl.registerLazySingleton<ITodoRepository>(() => TodoRepositoryImpl(sl()));

  /// Usecases
  sl.registerLazySingleton(() => GetTodoListUsecase(sl()));

  /// Cubits
  sl.registerFactory<TodoListCubit>(() => TodoListCubit(sl()));
}
