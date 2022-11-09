import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/radio/radio.dart';
import 'package:ui/ui/text/text.dart';

class RadioExamplePage extends StatefulWidget {
  const RadioExamplePage({Key? key}) : super(key: key);

  @override
  State<RadioExamplePage> createState() => _RadioExamplePageState();
}

class _RadioExamplePageState extends State<RadioExamplePage> {
  int? _value1;
  int? _value2;
  int? _value3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UIText.large('单选框', isBold: true),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UIText.large('对号', colorType: UIColorType.success),
            UIRadio<int>(
              value: _value1,
              items: const [
                MapEntry('选项0', 0),
                MapEntry('选项1', 1),
              ],
              onChanged: (value) {
                setState(() {
                  _value1 = value;
                });
              },
              isRectangle: false,
            ),
            const UIText.large('矩形', colorType: UIColorType.success),
            UIRadio<int>(
              value: _value2,
              items: const [
                MapEntry('选项0', 0),
                MapEntry('选项1', 1),
              ],
              onChanged: (value) {
                setState(() {
                  _value2 = value;
                });
              },
            ),
            const UIText.large('矩形 修改圆角值', colorType: UIColorType.success),
            UIRadio<int>(
              value: _value3,
              items: const [
                MapEntry('选项0', 0),
                MapEntry('选项1', 1),
              ],
              borderRadius: BorderRadius.circular(4),
              onChanged: (value) {
                setState(() {
                  _value3 = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
