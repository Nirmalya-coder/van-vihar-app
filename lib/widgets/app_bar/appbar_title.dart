import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: 74.h,
          decoration: AppDecoration.outlineBlackF,
          child: Text(
            text,
            maxLines: null,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.green700,
            ),
          ),
        ),
      ),
    );
  }
}
