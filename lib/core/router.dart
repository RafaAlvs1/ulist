import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ulist_project/dependencies_injection.dart';
import 'package:ulist_project/features/todo/pages.dart';

export 'package:go_router/go_router.dart';

enum Routes {
  root("/"),
  home("/home"),
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
        redirect: (_, __) => Routes.home.path,
      ),
      GoRoute(
        path: Routes.home.path,
        name: Routes.home.name,
        builder: (_, __) => BlocProvider(
          create: (_) => sl<HomeCubit>(),
          child: const MyHomePage()
        ),
      ),
      GoRoute(
        path: Routes.todoView.path,
        name: Routes.todoView.name,
        builder: (_, __) => TodoViewPage(
          todo: __.extra as TodoEntity,
        ),
      ),
    ],
    initialLocation: Routes.root.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
  );
}
