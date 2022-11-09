import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/widgets/click_animation/click_animation.dart';
import 'package:ui/ui/text/text.dart';
import 'package:ui/widgets/check_item/check_item.dart';

class UICheckbox<V> extends StatelessWidget {
  final List<V> values;
  final List<MapEntry<String, V>> items;
  final UICheckboxLayoutType? layoutType;
  final BorderRadius? borderRadius;
  final void Function(bool check, V value) onChanged;
  final bool isRectangle;

  /// 复选框
  ///
  /// [values] - 当前选中的值
  ///
  /// [items] - 选项  label:value
  ///
  /// [layoutType] - 布局类型
  ///
  /// [borderRadius] - 圆角值
  ///
  /// [onChanged] - 值改变事件
  ///
  /// [isRectangle] - 选中图标是否带矩形 默认 true
  const UICheckbox({
    super.key,
    required this.values,
    required this.items,
    this.layoutType = UICheckboxLayoutType.left,
    this.borderRadius,
    required this.onChanged,
    this.isRectangle = true,
  });

  bool isChecked(V v) {
    return values.contains(v);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UIColor.itemBackgroundColor,
      child: Column(
        children: [
          for (int i = 0; i < items.length; i++)
            UIClickAnimation(
              onPressed: () => onChanged(!isChecked(items[i].value), items[i].value),
              builder: (Color? color) => Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: color,
                      border: i != items.length - 1 ? const Border(bottom: BorderSide(color: UIColor.dividerColor)) : null,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: UITheme.checkboxPadding,
                            child: UIText.primary(items[i].key, isBold: true),
                          ),
                        ),
                        UICheckItem(
                          isRectangle: isRectangle,
                          checked: isChecked(items[i].value),
                          borderRadius: borderRadius,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}

enum UICheckboxLayoutType {
  left,
  right,
}
