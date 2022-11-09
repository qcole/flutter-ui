import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui.dart';
import 'package:ui/widgets/click_animation/click_animation.dart';

class UIListCell extends StatelessWidget {
  final Widget? icon;

  /// 是否有箭头
  final bool isArrow;

  /// 是否有分割线
  final bool isDivider;

  /// 是否有点击效果
  final bool isHighlight;
  final String title;
  final String? extra;
  final Widget? child;

  const UIListCell({
    Key? key,
    this.icon,
    this.isArrow = true,
    this.isDivider = false,
    this.isHighlight = true,
    required this.title,
    required this.extra,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = Container(
      padding: UITheme.listCellPadding,
      child: Row(
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: icon,
            ),
          Expanded(
            child: UIText.large(title),
          ),
          if (child != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: child!,
            )
          else if (extra != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: UIText.primary(extra!, disable: true),
            ),
          if (isArrow) const Icon(Icons.arrow_forward_ios, color: UIColor.textColorSecondary),
        ],
      ),
    );
    if (isHighlight) {
      return UIClickAnimation(builder: (Color? color) {
        return Container(
          decoration: BoxDecoration(
              color: color ?? UIColor.itemBackgroundColor,
              border: isDivider ? const Border(bottom: BorderSide(color: UIColor.dividerColor)) : null),
          child: widget,
        );
      });
    } else {
      return Container(
        color: UIColor.itemBackgroundColor,
        child: widget,
      );
    }
  }
}
