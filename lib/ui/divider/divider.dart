import 'package:flutter/material.dart';
import 'package:ui/theme.dart';

class UIDivider extends StatelessWidget {
  final EdgeInsets? padding;

  const UIDivider({Key? key, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        color: UIColor.dividerColor,
        height: 1,
      ),
    );
  }
}
