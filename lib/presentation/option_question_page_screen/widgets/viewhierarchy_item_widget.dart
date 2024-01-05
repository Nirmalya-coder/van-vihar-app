import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.blueGray700.withOpacity(0.98),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray500,
          width: 5.h,
        ),
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Container(
        height: 58.v,
        width: 345.h,
        decoration: AppDecoration.outlineBluegray500.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder25,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(29.h, 12.v, 29.h, 15.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      viewhierarchyItemModelObj.text1!,
                      style: theme.textTheme.headlineSmall,
                    ),
                    Container(
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 2.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray70001,
                        borderRadius: BorderRadius.circular(
                          11.h,
                        ),
                        border: Border.all(
                          color: appTheme.blueGray500,
                          width: 3.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                  right: 2.h,
                  bottom: 1.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray5001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        viewhierarchyItemModelObj.lion!,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    Container(
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 4.v),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray70001,
                        borderRadius: BorderRadius.circular(
                          11.h,
                        ),
                        border: Border.all(
                          color: appTheme.blueGray500,
                          width: 3.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.outlineBluegray5001.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text(
                        viewhierarchyItemModelObj.text3!,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    Container(
                      height: 23.adaptSize,
                      width: 23.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 5.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray70001,
                        borderRadius: BorderRadius.circular(
                          11.h,
                        ),
                        border: Border.all(
                          color: appTheme.blueGray500,
                          width: 3.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
