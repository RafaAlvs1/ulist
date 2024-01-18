import 'package:flutter/material.dart';
import 'package:ulist_project/core/widgets.dart';
import 'package:ulist_project/features/todo/domain/entities.dart';

class TodoViewPage extends StatefulWidget {
  final TodoEntity todo;

  const TodoViewPage({
    super.key,
    this.todo = const TodoEntity(),
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
    _todo = widget.todo.copyWith();
    _titleController = TextEditingController(text: _todo.title);
    _descriptionController = TextEditingController(text: _todo.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      labelText: 'Descrição',
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
    );
  }

  void _submit() {
    FocusScope.of(context).requestFocus(FocusNode());
    if (_validateAndSave()) {

    }
  }


  bool _validateAndSave() {
    final form = _formKey.currentState!;
    return form.validate();
  }
}
