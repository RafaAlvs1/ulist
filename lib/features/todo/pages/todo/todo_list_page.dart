import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulist_project/core/router.dart';
import 'package:ulist_project/core/widgets.dart';
import 'package:ulist_project/features/todo.dart';
import 'package:ulist_project/utils/ext/context.dart';

import 'widgets/todo_list_view.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  void initState() {
    super.initState();
    // context.read<TodoListCubit>().fetch();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TodoListCubit,TodoListState>(
      listener: (_, state) {
        state.whenOrNull(
          loading: () {
            context.show();
          },
          success: () {
            context.dismiss();
          },
          failure: (title, message) {
            context.dismiss();
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TODO List'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: const TodoListView(),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppRaisedButton(
            labelText: 'Nova tarefa',
            onPressed: () {
              context.push(Routes.todoView.path);
            },
          ),
        ),
      ),
    );
  }
}