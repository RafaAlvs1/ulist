import 'dart:convert';

import 'json_reader.dart';

enum JsonPath {
  successTodoList("helpers/stubs/todo_list_response.json"),
  ;

  const JsonPath(this.path);

  final String path;
  Map<String, dynamic> get json {
    return jsonDecode(jsonReader(path));
  }
}