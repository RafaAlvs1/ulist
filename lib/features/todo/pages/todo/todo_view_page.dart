import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulist_project/core/router.dart';
import 'package:ulist_project/core/widgets.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';
import 'package:ulist_project/utils/ext/context.dart';

import 'cubit/edit_todo_cubit.dart';

class TodoViewPage extends StatefulWidget {
  final TodoEntity? todo;

  const TodoViewPage({
    super.key,
    this.todo,
  });

  @override
  State<TodoViewPage> createState() => _TodoViewPageState();
}

class _TodoViewPageState extends State<TodoViewPage> {
  late TodoEntity _todo;
  late TextEditingController _descriptionController, _titleController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _todo = widget.todo?.copyWith() ?? const TodoEntity();
    _titleController = TextEditingController(text: _todo.title);
    _descriptionController = TextEditingController(text: _todo.description);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditTodoCubit, EditTodoState>(
      listener: (_, state) {
        state.whenOrNull(
          loading: () {
            context.show();
          },
          success: () {
            context.dismiss();
            context.pop();
          },
          failure: (title, message) {
            context.dismiss();
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(_todo.title ?? 'Tarefa'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppTextField(
                        controller: _titleController,
                        labelText: 'Título',
                      ),
                      AppTextField(
                        controller: _descriptionController,
                        maxLines: 3,
                        labelText: 'Descrição',
                        textInputAction: TextInputAction.newline,
                        onFieldSubmitted: (text) => _submit(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppRaisedButton(
                width: double.infinity,
                labelText: 'Salvar',
                onPressed: _submit,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    FocusScope.of(context).requestFocus(FocusNode());
    if (_validateAndSave()) {
      context.read<EditTodoCubit>().save(
            _titleController.text,
            _descriptionController.text,
          );
    }
  }

  bool _validateAndSave() {
    final form = _formKey.currentState!;
    return form.validate();
  }
}
