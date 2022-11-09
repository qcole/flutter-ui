import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/button/button.dart';

class ButtonExamplePage extends StatelessWidget {
  const ButtonExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIButton.primary(
              onPressed: () {},
              text: '占满宽度',
              sizeType: UIButtonSizeType.expand,
            ),
            UIButton.primary(
              onPressed: () {},
              text: '默认按钮',
            ),
            UIButton.primary(
              onPressed: () {},
              text: '图标',
              iconData: Icons.favorite_outline,
            ),
            UIButton.primary(
              onPressed: () {},
              text: 'success',
              colorType: UIColorType.success,
            ),
            UIButton.primary(
              onPressed: () {},
              text: 'warning',
              colorType: UIColorType.warning,
            ),
            UIButton.primary(
              onPressed: () {},
              text: 'danger',
              colorType: UIColorType.danger,
            ),
            UIButton.primary(
              onPressed: () {},
              text: 'purple',
              colorType: UIColorType.purple,
            ),
            UIButton.outlined(
              onPressed: () {},
              text: '朴素按钮',
            ),
            UIButton.primary(
              onPressed: () {},
              text: '小',
              sizeType: UIButtonSizeType.small,
            ),
            UIButton.primary(
              onPressed: () {},
              text: '小',
              iconData: Icons.favorite_outline,
              sizeType: UIButtonSizeType.small,
            ),
            UIButton.primary(
              onPressed: () {},
              text: '小按钮',
              sizeType: UIButtonSizeType.small,
            ),
            UIButton.text(
              onPressed: () {
                print('点击link');
              },
              child: const Text('link'),
            ),
            UIButton.text(
              onPressed: () {
                print('点击link');
              },
              child: const Text('文本'),
            ),
          ],
        ),
      ),
    );
  }
}
