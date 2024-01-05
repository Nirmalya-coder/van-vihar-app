import '../models/imagequestionpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ImagequestionpageItemWidget extends StatelessWidget {
  ImagequestionpageItemWidget(
    this.imagequestionpageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ImagequestionpageItemModel imagequestionpageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.adaptSize,
      width: 150.adaptSize,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: imagequestionpageItemModelObj?.image,
            height: 150.adaptSize,
            width: 150.adaptSize,
            radius: BorderRadius.circular(
              23.h,
            ),
            alignment: Alignment.center,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              right: 16.h,
            ),
            child: CustomIconButton(
              height: 23.adaptSize,
              width: 23.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.outlineRed,
              alignment: Alignment.topRight,
              child: CustomImageView(
                imagePath: imagequestionpageItemModelObj?.close,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
