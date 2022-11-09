import 'package:flutter/material.dart';
import 'package:ui/ui.dart';
import 'package:ui/ui/list_cell/list_cell.dart';

class ListCellExamplePage extends StatelessWidget {
  const ListCellExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const UIText.large('List Cell', isBold: true),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            UIListCell(title: '标题', extra: '附加',isHighlight: true, isDivider: true, child: null),
            UIListCell(title: '标题', extra: null, child: UIText.large('自定义Widget')),
            UIListCell(icon: Icon(Icons.ac_unit), title: '标题', extra: null, child: UIText.large('自定义Widget')),
          ],
        ),
      ),
    );
  }
}
