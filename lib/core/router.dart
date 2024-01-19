import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ulist_project/dependencies_injection.dart';
import 'package:ulist_project/features/todo/pages.dart';

export 'package:go_router/go_router.dart';

enum Routes {
  root("/"),
  todoList("/todo-list"),
  todoView("/todo-view"),
  ;

  const Routes(this.path);

  final String path;
}

class AppRoute {
  static late BuildContext context;

  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.root.path,
        name: Routes.root.name,
        redirect: (_, __) => Routes.todoList.path,
      ),
      GoRoute(
        path: Routes.todoList.path,
        name: Routes.todoList.name,
        builder: (_, __) => BlocProvider(
          create: (_) => sl<TodoListCubit>(),
          child: const TodoListPage(),
        ),
      ),
      GoRoute(
        path: Routes.todoView.path,
        name: Routes.todoView.name,
        builder: (_, __) => BlocProvider(
          create: (_) => sl<EditTodoCubit>(),
          child: TodoViewPage(
            todo: TodoEntity.fromJson(__.extra as Map<String, dynamic>? ?? {}),
          ),
        ),
      ),
    ],
    initialLocation: Routes.root.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
  );
}
