import 'package:example/pages/avatar_example/avatar_example.dart';
import 'package:example/pages/data_tag_example/data_tag_example.dart';
import 'package:example/pages/list_cell_example/list_cell_example.dart';
import 'package:example/pages/tag_example/tag_example.dart';
import 'package:flutter/material.dart';
import 'package:example/pages/button_example/button_example.dart';
import 'package:example/pages/card_example/card_example.dart';
import 'package:example/pages/checkbox_example/checkbox_example.dart';
import 'package:example/pages/radio_example/radio_example.dart';
import 'package:example/pages/switch_example/switch_example.dart';
import 'package:example/pages/text_example/text_example.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/button/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(backgroundColor: UIColor.backgroundColor),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('标题'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UIButton.primary(
            text: '按钮',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ButtonExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '文本',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TextExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '卡片',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CardExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '复选框',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CheckboxExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '单选框',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RadioExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '开关',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SwitchExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '头像',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AvatarExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '标签',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TagExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '数据标签',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DataTagExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
          UIButton.primary(
            text: '列表',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ListCellExamplePage()));
            },
            sizeType: UIButtonSizeType.expand,
          ),
        ],
      ),
    );
  }
}
