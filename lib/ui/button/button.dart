import 'package:flutter/material.dart';
import 'package:ui/theme.dart';

class UIButton extends StatelessWidget {
  final IconData? iconData;

  // 内容 widget
  final Widget? child;

  // 内容 text
  final String? text;

  // 占满整行
  final UIButtonSizeType? sizeType;

  // 点击事件
  final void Function()? onPressed;

  /// 主按钮
  /// [onPressed] - 按下事件
  ///
  /// [iconData] - 图标 可为空
  ///
  /// [child] - Widget内容 不可于text同时指定
  ///
  /// [text] - 文本内容 不可于child同时指定
  ///
  /// [sizeType] - 大小类型[UIButtonSizeType]
  UIButton.primary({
    super.key,
    this.onPressed,
    this.iconData,
    this.child,
    this.text,
    this.sizeType = UIButtonSizeType.none,
    UIColorType? colorType ,
  })  : _color = getColor(colorType),
        _type = UIButtonType.none,
        assert(child != null || text != null, 'child和text至少指定其中一个'),
        assert(!(child != null && text != null), 'child和text不可同时指定');

  /// 朴素按钮
  /// [onPressed] - 按下事件
  ///
  /// [iconData] - 图标 可为空
  ///
  /// [child] - Widget内容 优先级大于text
  ///
  /// [text] - 文本内容 会被child覆盖掉
  ///
  /// [sizeType] - 大小类型[UIButtonSizeType]
  UIButton.outlined({
    super.key,
    this.onPressed,
    this.iconData,
    this.child,
    this.text,
    this.sizeType = UIButtonSizeType.none,
    UIColorType? colorType,
  })  : _color = getColor(colorType),
        _type = UIButtonType.outlined,
        assert(child != null || text != null, 'child和text至少指定其中一个'),
        assert(!(child != null && text != null), 'child和text不可同时指定');

  /// 文本按钮
  /// [onPressed] - 按下事件
  ///
  /// [child] - Widget内容 优先级大于text
  ///
  /// [text] - 文本内容 会被child覆盖掉
  UIButton.text({
    super.key,
    this.onPressed,
    this.child,
    this.text,
    UIColorType? colorType,
  })  : _color = getColor(colorType),
        _type = UIButtonType.text,
        sizeType = null,
        iconData = null,
        assert(child != null || text != null, 'child和text至少指定其中一个'),
        assert(!(child != null && text != null), 'child和text不可同时指定');

  final Color _color;

  final UIButtonType _type;

  Widget buildChildWidget(bool setTextColor) {
    final widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (iconData != null)
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child: Icon(iconData, size: 14),
          ),
        if (child != null) child! else if (text != null) Text(text!),
      ],
    );
    if (setTextColor) {
      return DefaultTextStyle(style: TextStyle(color: _color), child: widget);
    } else {
      return widget;
    }
  }

  Widget buildMaterialButton(UIButtonSizeType sizeType, bool isOutlined) {
    final double? minWidth;
    final ShapeBorder shape;
    final Color? color;
    final EdgeInsets padding;
    switch (sizeType) {
      case UIButtonSizeType.none:
        minWidth = null;
        break;
      case UIButtonSizeType.expand:
        minWidth = double.infinity;
        break;
      case UIButtonSizeType.small:
        minWidth = 0;
        break;
    }

    if (isOutlined) {
      shape = RoundedRectangleBorder(
        side: BorderSide(color: _color),
        borderRadius: BorderRadius.circular(UITheme.buttonRadius),
      );
      color = null;
    } else {
      shape = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UITheme.buttonRadius),
      );
      color = _color;
    }

    if (sizeType == UIButtonSizeType.small) {
      padding = EdgeInsets.zero;
    } else {
      padding = UITheme.buttonPadding;
    }
    return Padding(
      padding: padding,
      child: MaterialButton(
        color: color,
        onPressed: onPressed,
        textColor: UITheme.buttonTextColor,
        shape: shape,
        minWidth: minWidth,
        child: buildChildWidget(isOutlined),
      ),
    );
  }

  Widget buildTextButton() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Padding(
        padding: UITheme.textButtonPadding,
        child: buildChildWidget(true),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case UIButtonType.none:
        return buildMaterialButton(sizeType!, false);
      case UIButtonType.text:
        return buildTextButton();
      case UIButtonType.outlined:
        return buildMaterialButton(sizeType!, true);
    }
  }
}

enum UIButtonSizeType {
  none,
  expand,
  small,
}

enum UIButtonType {
  none,
  outlined,
  text,
}
