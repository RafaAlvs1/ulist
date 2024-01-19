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
  sl.registerLazySingleton<ITodoRemoteDatasource>(() => TodoRemoteDatasourceFirebaseImpl(sl()));

  /// Repositories
  sl.registerLazySingleton<ITodoRepository>(() => TodoRepositoryImpl(sl()));

  /// Usecases
  sl.registerLazySingleton(() => GetTodoListUsecase(sl()));
  sl.registerLazySingleton(() => SaveTodoUsecase(sl()));
  sl.registerLazySingleton(() => DeleteTodoUsecase(sl()));

  /// Cubits
  sl.registerFactory<TodoListCubit>(() => TodoListCubit(sl(), sl()));
  sl.registerFactory<EditTodoCubit>(() => EditTodoCubit(sl()));
}
