import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final Function()? onTap;
  final Color? borderColor;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final Widget child;
  final double? height;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;

  const ButtonCustom(
      {Key? key,
      this.onTap,
      this.borderColor,
      this.borderRadius,
      this.height,
      this.backgroundColor,
      this.border,
      required this.child,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: padding ?? const EdgeInsets.all(0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(4),
              color: backgroundColor,
              border: border),
          height: height ?? 44,
          child: child),
    );
  }
}
