import 'models/audio_question_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/widgets/custom_elevated_button.dart';
import 'package:van_vihar_quiz2/widgets/custom_icon_button.dart';
import 'package:van_vihar_quiz2/widgets/custom_radio_button.dart';
import 'provider/audio_question_page_provider.dart';

class AudioQuestionPageScreen extends StatefulWidget {
  const AudioQuestionPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AudioQuestionPageScreenState createState() => AudioQuestionPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AudioQuestionPageProvider(),
      child: AudioQuestionPageScreen(),
    );
  }
}

class AudioQuestionPageScreenState extends State<AudioQuestionPageScreen> {
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
          child: SizedBox(
            height: SizeUtils.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 33.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
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
                        SizedBox(height: 17.v),
                        Container(
                          width: 312.h,
                          margin: EdgeInsets.only(right: 34.h),
                          child: Text(
                            "msg_what_is_the_name".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.headlineLargeWhiteA700,
                          ),
                        ),
                        SizedBox(height: 30.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgIntersect,
                          height: 174.adaptSize,
                          width: 174.adaptSize,
                          radius: BorderRadius.circular(
                            12.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 30.v),
                        _buildRadioGroup(context),
                        SizedBox(height: 36.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_check".tr,
                            style: CustomTextStyles.headlineSmallWhiteA700,
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
                      horizontal: 33.h,
                      vertical: 43.v,
                    ),
                    decoration: AppDecoration.fillBlueGray,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 66.v),
                        _buildScoreCounterRow(context),
                        SizedBox(height: 36.v),
                        Align(
                          alignment: Alignment.centerLeft,
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
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 305.h,
                            margin: EdgeInsets.only(right: 42.h),
                            child: Text(
                              "msg_what_is_the_name".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ),
                        SizedBox(height: 77.v),
                        SizedBox(
                          height: 125.v,
                          width: 275.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 40.v),
                                  padding: EdgeInsets.symmetric(vertical: 16.v),
                                  decoration:
                                      AppDecoration.outlineBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgGroup15,
                                        height: 40.v,
                                        width: 179.h,
                                        margin: EdgeInsets.only(top: 1.v),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgSubtract,
                                        height: 32.adaptSize,
                                        width: 32.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 1.v,
                                          bottom: 6.v,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomIconButton(
                                height: 80.adaptSize,
                                width: 80.adaptSize,
                                alignment: Alignment.bottomCenter,
                                child: CustomImageView(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 11.v),
                        _buildSevenRow(context),
                        SizedBox(height: 16.v),
                        _buildNineteenColumn(context),
                        SizedBox(height: 16.v),
                        _buildFrameFiveRow(context),
                        SizedBox(height: 16.v),
                        _buildFrameSixRow(context),
                        SizedBox(height: 27.v),
                        CustomElevatedButton(
                          width: 132.h,
                          text: "lbl_check".tr,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRadioGroup(BuildContext context) {
    return Consumer<AudioQuestionPageProvider>(
      builder: (context, provider, child) {
        return provider.audioQuestionPageModelObj!.radioList.isNotEmpty
            ? Column(
                children: [
                  CustomRadioButton(
                    width: 345.h,
                    text: "lbl_lion".tr,
                    value:
                        provider.audioQuestionPageModelObj?.radioList[0] ?? "",
                    groupValue: provider.radioGroup,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 12.v,
                    ),
                    isRightCheck: true,
                    onChange: (value) {
                      provider.changeRadioButton1(value);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.v),
                    child: CustomRadioButton(
                      width: 345.h,
                      text: "lbl_tiger".tr,
                      value: provider.audioQuestionPageModelObj?.radioList[1] ??
                          "",
                      groupValue: provider.radioGroup,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 12.v,
                      ),
                      isRightCheck: true,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.v),
                    child: CustomRadioButton(
                      width: 345.h,
                      text: "lbl_bear".tr,
                      value: provider.audioQuestionPageModelObj?.radioList[2] ??
                          "",
                      groupValue: provider.radioGroup,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 13.v,
                      ),
                      isRightCheck: true,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.v),
                    child: CustomRadioButton(
                      width: 345.h,
                      text: "lbl_waltrus".tr,
                      value: provider.audioQuestionPageModelObj?.radioList[3] ??
                          "",
                      groupValue: provider.radioGroup,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 13.v,
                      ),
                      isRightCheck: true,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }

  /// Section Widget
  Widget _buildScoreCounterRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_score_15".tr,
            style: CustomTextStyles.headlineSmallBluegray300,
          ),
          Text(
            "lbl_0_55".tr,
            style: CustomTextStyles.headlineSmallBluegray300,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSevenRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBluegray500.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_koel".tr,
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
  Widget _buildNineteenColumn(BuildContext context) {
    return Container(
      width: 343.h,
      margin: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 11.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.circleBorder25,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup19,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "lbl_nightingale".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameFiveRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
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
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "lbl_sparrow".tr,
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
    );
  }

  /// Section Widget
  Widget _buildFrameSixRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 2.h,
        right: 3.h,
      ),
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
            "lbl_kokoo".tr,
            style: theme.textTheme.headlineSmall,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: CustomIconButton(
              height: 23.adaptSize,
              width: 23.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.outlineRedTL11,
              child: CustomImageView(
                imagePath: ImageConstant.imgClose,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
