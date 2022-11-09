import 'package:flutter/material.dart';
import 'package:ui/ui.dart';
import 'package:ui/ui/data_tag/data_tag.dart';

class DataTagExamplePage extends StatelessWidget {
  const DataTagExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UIText.large('数据标签', isBold: true),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            UIDataTag<int>(
              values: [1, 2],
              items: [
                MapEntry('标签1', 1),
                MapEntry('标签2', 2),
              ],
            )
          ],
        ),
      ),
    );
  }
}

