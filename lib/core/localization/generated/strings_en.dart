import 'strings.dart';

/// The translations for English (`en`).
class StringsEn extends Strings {
  StringsEn([String locale = 'en']) : super(locale);

  @override
  String get button_save => 'Save';

  @override
  String get todo_edit_title => 'New To-do';

  @override
  String get todo_list_title => 'To-do list';

  @override
  String get todo_title => 'Title';

  @override
  String get todo_description => 'Description';

  @override
  String get todo_search => 'Search...';

  @override
  String get todo_list_empty => 'The list is empty';

  @override
  String get can_not_empty => 'Can not be empty.';
}
