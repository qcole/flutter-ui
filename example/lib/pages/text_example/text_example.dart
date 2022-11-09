import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/text/text.dart';

class TextExamplePage extends StatelessWidget {
  const TextExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UIText.large('文本', isBold: true),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            UIText.primary('文本'),
            UIText.primary('文本 加粗', isBold: true),
            UIText.primary('文本 禁用', disable: true),
            UIText.large('大'),
            UIText.large('大 加粗', isBold: true),
            UIText.large('大 禁用', disable: true),
            UIText.small('小'),
            UIText.small('小 加粗', isBold: true),
            UIText.small('小 禁用 ', disable: true),
            UIText.custom('自定义 加粗 20 Colors.pinkAccent', isBold: true, color: Colors.pinkAccent, fontSize: 20),
            Divider(),
            UIText.primary('primary', colorType: UIColorType.primary),
            UIText.primary('success', colorType: UIColorType.success),
            UIText.primary('warning', colorType: UIColorType.warning),
            UIText.primary('danger', colorType: UIColorType.danger),
            UIText.primary('purple', colorType: UIColorType.purple),
          ],
        ),
      ),
    );
  }
}
