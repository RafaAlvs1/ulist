import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulist_project/core/router.dart';
import 'package:ulist_project/features/todo.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  State<TodoListView> createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoListCubit, TodoListState>(
      builder: (_, state) {
        if (context.read<TodoListCubit>().loading) {
          return Center(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: const CircularProgressIndicator.adaptive(),
            ),
          );
        }

        final list = context.read<TodoListCubit>().list;
        return Material(
          color: Colors.white,
          clipBehavior: Clip.hardEdge,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              final todo = list[index];
              return InkWell(
                child: _buildItem(todo),
                onTap: () {
                  context.push(
                    Routes.todoView.path,
                    extra: todo,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildItem(TodoEntity todo) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      constraints: const BoxConstraints(
        minWidth: 40.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  todo.title ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  todo.description ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          if (todo.id != null)
            IconButton(
              icon: const Icon(
                Icons.cancel,
                color: Colors.red,
              ),
              onPressed: () {
                context.read<TodoListCubit>().delete(todo.id!);
              },
            ),
        ],
      ),
    );
  }
}
