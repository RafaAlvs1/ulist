import 'package:flutter/material.dart';
import 'package:ulist_project/core/localization.dart';
import 'package:ulist_project/core/widgets.dart';

class SearchTextField extends StatefulWidget {
  final TextEditingController? controller;
  final Function(String text)? onChanged;

  const SearchTextField({
    super.key,
    this.controller,
    this.onChanged,
  });

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      controller: _controller,
      prefixIcon: const Icon(Icons.search),
      placeholder: Strings.of(context)!.todo_search,
      onChanged: widget.onChanged,
      textInputAction: TextInputAction.done,
      onFieldSubmitted: widget.onChanged,
      suffixIcon: ValueListenableBuilder(
        valueListenable: _controller,
        builder: (_, value, child) {
          if (_controller.text.isEmpty) {
            return Container(width: 1.0);
          }

          return IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              FocusScope.of(context).requestFocus(FocusNode());
              _controller.clear();
              widget.onChanged?.call('');
            },
          );
        },
      ),
    );
  }
}
