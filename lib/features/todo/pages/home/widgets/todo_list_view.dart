import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulist_project/features/todo.dart';
import 'package:ulist_project/features/todo/domain/entities/todo.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (_, state) {
        if (context.read<HomeCubit>().loading) {
          return Center(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              child: const CircularProgressIndicator.adaptive(),
            ),
          );
        }

        final list = context.read<HomeCubit>().list;
        return Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          clipBehavior: Clip.hardEdge,
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, index) {
              final todo = list[index];
              return _buildItem(todo);
            },
          ),
        );
      },
    );
  }

  Widget _buildItem(TodoEntity todo) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.description ?? '',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.cancel,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
