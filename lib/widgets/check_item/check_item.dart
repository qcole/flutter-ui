import 'package:flutter/material.dart';
import 'package:ui/theme.dart';

class UICheckItem extends StatelessWidget {
  final bool isRectangle;
  final BorderRadius? borderRadius;
  final bool checked;

  const UICheckItem({
    Key? key,
    required this.isRectangle,
    this.borderRadius,
    required this.checked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isRectangle) {
      if (checked) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(UITheme.checkboxCheckIconSize),
              color: UIColor.primaryColor,
            ),
            child: const Padding(
              padding: EdgeInsets.all(UITheme.checkboxCheckPaddingAll),
              child: Icon(Icons.check, color: UITheme.buttonTextColor, size: UITheme.checkboxCheckIconSize),
            ),
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            width: UITheme.checkboxCheckIconSize + UITheme.checkboxCheckPaddingAll * 2,
            height: UITheme.checkboxCheckIconSize + UITheme.checkboxCheckPaddingAll * 2,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(UITheme.checkboxCheckIconSize),
              border: Border.all(
                color: UIColor.textColorSecondary,
              ),
            ),
          ),
        );
      }
    } else {
      if (checked) {
        return const Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.check, color: UIColor.secondaryColorRed),
        );
      } else {
        return const SizedBox();
      }
    }
  }
}
