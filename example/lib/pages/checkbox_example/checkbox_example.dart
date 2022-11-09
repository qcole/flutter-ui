import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/checkbox/checkbox.dart';
import 'package:ui/ui/radio/radio.dart';
import 'package:ui/ui/text/text.dart';

class CheckboxExamplePage extends StatefulWidget {
  const CheckboxExamplePage({Key? key}) : super(key: key);

  @override
  State<CheckboxExamplePage> createState() => _CheckboxExamplePageState();
}

class _CheckboxExamplePageState extends State<CheckboxExamplePage> {
  final List<int> _values1 = [];
  final List<int> _values2 = [];
  final List<int> _values3 = [];

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
            UICheckbox<int>(
              values: _values1,
              items: const [
                MapEntry('选项0', 0),
                MapEntry('选项1', 1),
              ],
              onChanged: (checked, value) {
                setState(() {
                  if (checked) {
                    _values1.add(value);
                  } else {
                    _values1.remove(value);
                  }
                });
              },
              isRectangle: false,
            ),
            const UIText.large('矩形', colorType: UIColorType.success),
            UICheckbox<int>(
              values: _values2,
              items: const [
                MapEntry('选项0', 0),
                MapEntry('选项1', 1),
              ],
              onChanged: (checked, value) {
                setState(() {
                  if (checked) {
                    _values2.add(value);
                  } else {
                    _values2.remove(value);
                  }
                });
              },
            ),
            const UIText.large('矩形 修改圆角值', colorType: UIColorType.success),
            UICheckbox<int>(
              values: _values3,
              items: const [
                MapEntry('选项0', 0),
                MapEntry('选项1', 1),
              ],
              borderRadius: BorderRadius.circular(4),
              onChanged: (checked, value) {
                setState(() {
                  if (checked) {
                    _values3.add(value);
                  } else {
                    _values3.remove(value);
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
