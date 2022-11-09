import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/tag/tag.dart';
import 'package:ui/ui/text/text.dart';

class TagExamplePage extends StatelessWidget {
  const TagExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UIText.large('标签', isBold: true),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              children: const [
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.primary(text: '标签一'),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.primary(text: '标签二',colorType: UIColorType.success),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.primary(text: '标签三',colorType:  UIColorType.warning),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.primary(text: '标签四',colorType:  UIColorType.danger),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.primary(text: '标签五',colorType:  UIColorType.purple),
                ),
              ],
            ),
            Wrap(
              children: const [
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.transparent(text: '标签一'),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.transparent(text: '标签二',colorType: UIColorType.success),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.transparent(text: '标签三',colorType:  UIColorType.warning),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.transparent(text: '标签四',colorType:  UIColorType.danger),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.transparent(text: '标签五',colorType:  UIColorType.purple),
                ),
              ],
            ),
            Wrap(
              children:  [
                const Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.outlined(text: '标签一'),
                ),
                const Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.outlined(text: '标签二',colorType: UIColorType.success),
                ),
                const Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.outlined(text: '标签三',colorType:  UIColorType.warning),
                ),
                const Padding(
                  padding: EdgeInsets.all(4),
                  child: UITag.outlined(text: '标签四',colorType:  UIColorType.danger),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: UITag.outlined(text: '标签五',colorType:  UIColorType.purple,onClose: (){
                    print('标签点击关闭');
                  },),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
