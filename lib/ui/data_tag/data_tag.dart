import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui/theme.dart';
import 'package:ui/ui.dart';
import 'package:ui/ui/tag/tag.dart';

class UIDataTag<V> extends StatelessWidget {
  final List<V> values;
  final List<MapEntry<String, V>> items;
  final int? maxCount;
  final bool isCanEmpty;
  final bool isCorner;
  final BorderRadius? borderRadius;
  final Color? color;
  final UIColorType? colorType;
  final void Function(bool checked, V value)? onChanged;
  final void Function(V value)? onReject;

  /// [values] - 选中的值
  ///
  /// [items] - 数据
  ///
  /// [maxCount] - 最大数量(为null是不限制)
  ///
  /// [isCanEmpty] - 是否可以为空(不选)
  ///
  /// [isCorner] - 是否有角标
  ///
  /// [borderRadius] - 圆角
  ///
  /// [color] - 颜色(优先级大于colorType)
  ///
  /// [colorType] - 颜色类型
  ///
  /// [onChanged] - 选择回调
  ///
  /// [onReject] - 拒绝回调(超过最大数量)
  const UIDataTag({
    super.key,
    required this.values,
    required this.items,
    this.isCanEmpty = true,
    this.maxCount,
    this.isCorner = false,
    this.borderRadius,
    this.color,
    this.colorType,
    this.onChanged,
    this.onReject,
  });

  bool isChecked(V v) {
    return values.contains(v);
  }

  @override
  Widget build(BuildContext context) {
    final borderColor = color ?? getColor(colorType);
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        for (int i = 0; i < items.length; i++)
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: borderRadius ?? BorderRadius.circular(UITheme.tagRadius),
                  color: UIColor.itemBackgroundColor,
                  border: isChecked(items[i].value) ? Border.all(color: borderColor) : null,
                ),
                child: Padding(
                  padding: UITheme.tagPadding,
                  child: UIText.small(items[i].key),
                ),
              ),
              Positioned(
                right: -15,
                bottom: -15,
                child: Transform.rotate(
                  angle: 150,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: borderColor),
                  ),
                ),
              )
            ],
          )
      ],
    );
  }
}
