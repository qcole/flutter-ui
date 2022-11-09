import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui/divider/divider.dart';
import 'package:ui/ui/switch/switch.dart';
import 'package:ui/ui/text/text.dart';

class SwitchExamplePage extends StatefulWidget {
  const SwitchExamplePage({Key? key}) : super(key: key);

  @override
  State<SwitchExamplePage> createState() => _SwitchExamplePageState();
}

class _SwitchExamplePageState extends State<SwitchExamplePage> {
  bool _value1 = false;
  bool _value2 = true;
  bool _value3 = false;
  bool _value4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UIText.large('开关', isBold: true),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UISwitch(
              value: _value1,
              label: '开关',
              onChanged: (value) {
                setState(() {
                  _value1 = value;
                });
              },
            ),
            const UIDivider(padding: EdgeInsets.symmetric(vertical: 20)),
            UISwitch(
              value: _value2,
              label: '禁用',
              disable: true,
              onChanged: (value) {
                setState(() {
                  _value2 = value;
                });
              },
            ),
            const UIDivider(padding: EdgeInsets.symmetric(vertical: 20)),
            UISwitch(
              value: _value3,
              child:  UIText.large('自定义child:$_value3', colorType: UIColorType.success),
              onChanged: (value) {
                setState(() {
                  _value3 = value;
                });
              },
            ),
            const UIDivider(padding: EdgeInsets.symmetric(vertical: 20)),
            UISwitch(
              value: _value4,
              builder: (value) => UIText.large('自定义builder:${value ? 'true' : 'false'}', isBold: true),
              onChanged: (value) {
                setState(() {
                  _value4 = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
