import '../option_question_page_screen/widgets/viewhierarchy_item_widget.dart';
import 'models/option_question_page_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_image.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_title.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/custom_app_bar.dart';
import 'package:van_vihar_quiz2/widgets/custom_elevated_button.dart';
import 'provider/option_question_page_provider.dart';

class OptionQuestionPageScreen extends StatefulWidget {
  const OptionQuestionPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OptionQuestionPageScreenState createState() =>
      OptionQuestionPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OptionQuestionPageProvider(),
      child: OptionQuestionPageScreen(),
    );
  }
}

class OptionQuestionPageScreenState extends State<OptionQuestionPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.gray100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder35,
            ),
            child: Container(
              height: SizeUtils.height,
              width: double.maxFinite,
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder35,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 33.h,
                        top: 50.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_question_1".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                            TextSpan(
                              text: "lbl_10".tr,
                              style: CustomTextStyles.titleLargeBluegray500,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 157.v,
                      width: 312.h,
                      margin: EdgeInsets.only(
                        left: 33.h,
                        top: 106.v,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 312.h,
                              child: Text(
                                "msg_what_is_the_name".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.headlineLargeWhiteA700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(top: 13.v),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_question_1".tr,
                                      style: theme.textTheme.headlineMedium,
                                    ),
                                    TextSpan(
                                      text: "lbl_10".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 53.v),
                      child: Text(
                        "lbl_check".tr,
                        style: CustomTextStyles.headlineSmallWhiteA700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 34.h,
                        right: 34.h,
                        bottom: 120.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 174.adaptSize,
                            width: 174.adaptSize,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgIntersect,
                                  height: 174.adaptSize,
                                  width: 174.adaptSize,
                                  radius: BorderRadius.circular(
                                    12.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 174.adaptSize,
                                    width: 174.adaptSize,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgIntersect,
                                          height: 174.adaptSize,
                                          width: 174.adaptSize,
                                          radius: BorderRadius.circular(
                                            12.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgIntersect,
                                          height: 174.adaptSize,
                                          width: 174.adaptSize,
                                          radius: BorderRadius.circular(
                                            12.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30.v),
                          _buildViewHierarchy(context),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 49.v,
                        right: 33.h,
                      ),
                      child: Text(
                        "lbl_0_55".tr,
                        style: CustomTextStyles.headlineLargeBluegray300,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 33.h,
                        top: 49.v,
                      ),
                      child: Text(
                        "lbl_score_15".tr,
                        style: CustomTextStyles.headlineLargeBluegray300,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 345.h,
                      margin: EdgeInsets.only(top: 175.v),
                      child: Text(
                        "msg_what_is_the_name".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.headlineSmallWhiteA700,
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    width: 132.h,
                    text: "lbl_check".tr,
                    margin: EdgeInsets.only(bottom: 43.v),
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 33.h,
                        top: 50.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_question_1".tr,
                              style: theme.textTheme.headlineLarge,
                            ),
                            TextSpan(
                              text: "lbl_10".tr,
                              style: CustomTextStyles.titleLargeBluegray500,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 312.h,
                      margin: EdgeInsets.only(
                        left: 33.h,
                        top: 106.v,
                      ),
                      child: Text(
                        "msg_what_is_the_name".tr,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.headlineLargeWhiteA700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder35,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildAppBar(context),
                          SizedBox(height: 21.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 33.h,
                                right: 51.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_score_15".tr,
                                    style: CustomTextStyles
                                        .headlineSmallBluegray300,
                                  ),
                                  Text(
                                    "lbl_0_55".tr,
                                    style: CustomTextStyles
                                        .headlineSmallBluegray300,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 43.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 33.h),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_question_1".tr,
                                      style: theme.textTheme.headlineMedium,
                                    ),
                                    TextSpan(
                                      text: "lbl_10".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                          SizedBox(height: 19.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 305.h,
                              margin: EdgeInsets.only(
                                left: 35.h,
                                right: 73.h,
                              ),
                              child: Text(
                                "msg_what_is_the_name".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                          ),
                          SizedBox(height: 27.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgIntersect,
                            height: 156.adaptSize,
                            width: 156.adaptSize,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          _buildLionRow(context),
                          SizedBox(height: 16.v),
                          _buildTigerRow(context),
                          SizedBox(height: 16.v),
                          _buildBearRow(context),
                          SizedBox(height: 16.v),
                          _buildWaltrusRow(context),
                          SizedBox(height: 27.v),
                          CustomElevatedButton(
                            width: 132.h,
                            text: "lbl_check".tr,
                            buttonStyle: CustomButtonStyles.fillBlueTL5,
                          ),
                          SizedBox(height: 42.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Consumer<OptionQuestionPageProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 15.v,
            );
          },
          itemCount:
              provider.optionQuestionPageModelObj.viewhierarchyItemList.length,
          itemBuilder: (context, index) {
            ViewhierarchyItemModel model = provider
                .optionQuestionPageModelObj.viewhierarchyItemList[index];
            return ViewhierarchyItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 70.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgVanvihar1,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarTitle(
        text: "msg_van_vihar_bhopal".tr,
        margin: EdgeInsets.only(left: 11.h),
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.fillBluegray100.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder25,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.imgLogo1,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildLionRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineBluegray500.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              "lbl_lion".tr,
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
                strokeAlign: strokeAlignOutside,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTigerRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBluegray500.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "lbl_tiger".tr,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          Container(
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
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
    );
  }

  /// Section Widget
  Widget _buildBearRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBluegray500.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_bear".tr,
            style: theme.textTheme.headlineSmall,
          ),
          Container(
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 3.v),
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
    );
  }

  /// Section Widget
  Widget _buildWaltrusRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBluegray500.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_waltrus".tr,
            style: theme.textTheme.headlineSmall,
          ),
          Container(
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              right: 2.h,
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
    );
  }
}
