import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.blue600,
                  borderRadius: BorderRadius.circular(11.h),
                  border: Border.all(
                    color: appTheme.blue600,
                    width: 3.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: appTheme.blue600,
        borderRadius: BorderRadius.circular(11.h),
        border: Border.all(
          color: appTheme.blue600,
          width: 3.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.red700,
        borderRadius: BorderRadius.circular(11.h),
        border: Border.all(
          color: appTheme.red700,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineRedTL11 => BoxDecoration(
        color: appTheme.red700,
        borderRadius: BorderRadius.circular(11.h),
        border: Border.all(
          color: appTheme.red700,
          width: 3.h,
        ),
      );
}
