import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/widgets/click_animation/click_animation.dart';
import 'package:ui/ui/divider/divider.dart';
import 'package:ui/ui/text/text.dart';
import 'package:ui/widgets/check_item/check_item.dart';

class UIRadio<V> extends StatelessWidget {

  final V? value;
  final List<MapEntry<String, V>> items;
  final UIRadioLayoutType? layoutType;
  final BorderRadius? borderRadius;
  final void Function(V value) onChanged;
  final bool isRectangle;

  /// 单选框
  ///
  /// [value] - 当前选中的值 可为空
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
  const UIRadio({
    super.key,
    required this.value,
    required this.items,
    this.layoutType = UIRadioLayoutType.left,
    this.borderRadius,
    required this.onChanged,
    this.isRectangle = true,
  });

  bool isChecked(V v) => v == value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UIColor.itemBackgroundColor,
      child: Column(
        children: [
          for (int i = 0; i < items.length; i++)
            UIClickAnimation(
              onPressed: () => onChanged(items[i].value),
              builder: (Color? color) => Column(
                children: [
                  Container(
                    color: color,
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
                  if (i != items.length - 1)
                    UIDivider(
                      // 去除上下右
                      padding: UITheme.checkboxPadding.copyWith(top: 0, bottom: 0, right: 0),
                    ),
                ],
              ),
            )
        ],
      ),
    );
  }
}

enum UIRadioLayoutType {
  left,
  right,
}
