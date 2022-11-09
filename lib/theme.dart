import 'package:flutter/material.dart';

class UIColor {
  /// 主色
  static const Color primaryColor = Color(0xFF465CFF);

  /// 辅助色 红
  static const Color secondaryColorRed = Color(0xFFFF2B2B);

  /// 辅助色 黄
  static const Color secondaryColorYellow = Color(0xFFFFB703);

  /// 辅助色 紫
  static const Color secondaryColorPurple = Color(0xFF6831FF);

  /// 辅助色 绿
  static const Color secondaryColorGreen = Color(0xFF09BE4F);

  /// 标题字体颜色
  static const Color textColorTitle = Color(0xFF181818);

  /// 主要字体颜色
  static const Color textColorPrimary = Color(0xFF181818);

  /// 次要字体颜色
  static const Color textColorSecondary = Color(0xFFB2B2B2);

  /// 禁用字体颜色
  static const Color textColorDisabled = Color(0xFFCCCCCC);

  /// 背景颜色
  static const Color backgroundColor = Color(0xFFF1F4FA);

  /// 项目背景色
  static const Color itemBackgroundColor = Color(0xFFFFFFFF);

  /// 弹出背景色
  static const Color popupBackgroundColor = Color(0xFFF8F8F8);

  /// 分割线颜色
  static const Color dividerColor = Color(0xFFEEEEEE);

  /// 见渐变色
  static List<Color> gradientColor = const [
    Color(0xFF465CFF),
    Color(0xFF6831FF),
  ];
}

class UIColorDark {
  /// 主色
  static const Color primaryColor = Color(0xFF465CFF);

  /// 辅助色 红
  static const Color secondaryColorRed = Color(0xFFFF2B2B);

  /// 辅助色 黄
  static const Color secondaryColorYellow = Color(0xFFFFB703);

  /// 辅助色 紫
  static const Color secondaryColorPurple = Color(0xFF6831FF);

  /// 辅助色 绿
  static const Color secondaryColorGreen = Color(0xFF09BE4F);

  /// 标题字体颜色
  static const Color textColorTitle = Color(0xFFD1D1D1);

  /// 主要字体颜色
  static const Color textColorPrimary = Color(0xFFA3A3A3);

  /// 次要字体颜色
  static const Color textColorSecondary = Color(0xFF8D8D8D);

  /// 禁用字体颜色
  static const Color textColorDisabled = Color(0xFF5E5E5E);

  /// 背景颜色
  static const Color backgroundColor = Color(0xFF111111);

  /// 弹出颜色
  static const Color itemBackgroundColor = Color(0xFF1B1B1B);

  /// 项目背景色
  static const Color popupBackgroundColor = Color(0xFF222222);

  /// 分割线颜色
  static const Color dividerColor = Color(0xFF242424);

  /// 见渐变色
  List<Color> get gradientColor =>
      const [
        Color(0xFFFD8C8C),
        Color(0xFFFF2B2B),
      ];
}

class UITheme {
  UITheme._();

  static const buttonTextColor = Color(0xFFFFFFFF);
  static const buttonPadding = EdgeInsets.symmetric(vertical: 3, horizontal: 10);
  static const buttonRadius = 4.0;
  static const textButtonPadding = EdgeInsets.symmetric(vertical: 5, horizontal: 5);

  /// 复选框每个item的边距
  static const checkboxPadding = EdgeInsets.symmetric(vertical: 15, horizontal: 10);

  /// 复选框的那个选中图标的边距
  static const checkboxCheckPaddingAll = 2.0;

  /// 复选框的那个选中图标的大小
  static const checkboxCheckIconSize = 15.0;

  static const tagPadding = EdgeInsets.symmetric(vertical: 5, horizontal: 10);

  static const cardPadding = EdgeInsets.symmetric(vertical: 5, horizontal: 10);

  static const cardRadius = 12.0;

  static const listCellPadding = EdgeInsets.symmetric(vertical: 15, horizontal: 10);

  static const avatarDefaultRadius = 12.0;

  static const avatarDefaultSize = 50.0;

  static const tagRadius = 4.0;
}

Color getColor(UIColorType? type) {
  switch (type) {
    case null:
      return UIColor.primaryColor;
    case UIColorType.primary:
      return UIColor.primaryColor;
    case UIColorType.success:
      return UIColor.secondaryColorGreen;
    case UIColorType.warning:
      return UIColor.secondaryColorYellow;
    case UIColorType.danger:
      return UIColor.secondaryColorRed;
    case UIColorType.purple:
      return UIColor.secondaryColorPurple;
    case UIColorType.secondary:
      return UIColor.textColorSecondary;
  }
}

enum UIColorType {
  primary,
  success,
  warning,
  danger,
  purple,
  secondary,
}
