import 'package:flutter/material.dart';

typedef ClickCallback = void Function();

class UIPreview extends StatelessWidget {
  final MapEntry<String, String> title;
  final Map<String, Widget> items;
  final MapEntry<Widget, ClickCallback>? action1;
  final MapEntry<Widget, ClickCallback>? action2;

  const UIPreview({
    Key? key,
    required this.title,
    required this.items,
    this.action1,
    this.action2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
