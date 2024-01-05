import 'models/answer_page_model.dart';
import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_image.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_title.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/custom_app_bar.dart';
import 'package:van_vihar_quiz2/widgets/custom_elevated_button.dart';
import 'package:van_vihar_quiz2/widgets/custom_icon_button.dart';
import 'package:van_vihar_quiz2/widgets/custom_radio_button.dart';
import 'provider/answer_page_provider.dart';

class AnswerPageScreen extends StatefulWidget {
  const AnswerPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AnswerPageScreenState createState() => AnswerPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnswerPageProvider(),
      child: AnswerPageScreen(),
    );
  }
}

class AnswerPageScreenState extends State<AnswerPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildFortyFour(context),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder35,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(context),
                      SizedBox(height: 34.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            right: 55.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_score_15".tr,
                                style:
                                    CustomTextStyles.headlineSmallBluegray300,
                              ),
                              Text(
                                "lbl_0_55".tr,
                                style:
                                    CustomTextStyles.headlineSmallBluegray300,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 37.v),
                      _buildTwentyFour(context),
                      SizedBox(height: 57.v),
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
                      SizedBox(height: 29.v),
                      Container(
                        width: 306.h,
                        margin: EdgeInsets.only(
                          left: 51.h,
                          right: 55.h,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_the".tr,
                                style: CustomTextStyles.titleLargeGillSans,
                              ),
                              TextSpan(
                                text: "lbl_tiger".tr,
                                style: CustomTextStyles
                                    .titleLargeGillSansLightgreenA700,
                              ),
                              TextSpan(
                                text: "msg_is_the_largest_living".tr,
                                style: CustomTextStyles.titleLargeGillSans,
                              ),
                              TextSpan(
                                text: "lbl_panthera".tr,
                                style: CustomTextStyles
                                    .titleLargeGillSansBluegray500,
                              ),
                              TextSpan(
                                text: "msg_it_is_most_recognisable".tr,
                                style: CustomTextStyles.titleLargeGillSans,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
                      SizedBox(height: 43.v),
                      SizedBox(
                        height: 51.v,
                        width: 132.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "lbl_check".tr,
                                style: CustomTextStyles.headlineSmallWhiteA700,
                              ),
                            ),
                            CustomElevatedButton(
                              width: 132.h,
                              text: "lbl_next".tr,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 43.h,
          right: 28.h,
          bottom: 43.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Consumer<AnswerPageProvider>(
              builder: (context, provider, child) {
                return CustomRadioButton(
                  width: 343.h,
                  text: "lbl_lion".tr,
                  value: "lbl_lion".tr,
                  groupValue: provider.radioGroup,
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.h,
                    vertical: 12.v,
                  ),
                  isRightCheck: true,
                  onChange: (value) {
                    provider.changeRadioButton1(value);
                  },
                );
              },
            ),
            SizedBox(height: 33.v),
            Padding(
              padding: EdgeInsets.only(right: 32.h),
              child: CustomIconButton(
                height: 23.adaptSize,
                width: 23.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: IconButtonStyleHelper.outlineBlue,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                ),
              ),
            ),
            SizedBox(height: 123.v),
            Padding(
              padding: EdgeInsets.only(right: 32.h),
              child: CustomIconButton(
                height: 23.adaptSize,
                width: 23.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.outlineRed,
                child: CustomImageView(
                  imagePath: ImageConstant.imgClose,
                ),
              ),
            ),
            SizedBox(height: 44.v),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 105.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 28.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillBlue.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Text(
                  "lbl_check".tr,
                  style: CustomTextStyles.headlineSmallWhiteA700,
                ),
              ),
            ),
          ],
        ),
      ),
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
  Widget _buildTwentyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 3.v,
            ),
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
          CustomElevatedButton(
            height: 48.v,
            width: 129.h,
            text: "lbl_right".tr,
            buttonStyle: CustomButtonStyles.fillLightGreenA,
            buttonTextStyle: theme.textTheme.titleLarge!,
          ),
        ],
      ),
    );
  }
}
