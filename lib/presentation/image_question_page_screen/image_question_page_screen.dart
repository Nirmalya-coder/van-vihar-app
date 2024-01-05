import '../image_question_page_screen/widgets/imagequestionpage_item_widget.dart';
import 'models/image_question_page_model.dart';
import 'models/imagequestionpage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:van_vihar_quiz2/core/app_export.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_image.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/appbar_title.dart';
import 'package:van_vihar_quiz2/widgets/app_bar/custom_app_bar.dart';
import 'package:van_vihar_quiz2/widgets/custom_elevated_button.dart';
import 'provider/image_question_page_provider.dart';

class ImageQuestionPageScreen extends StatefulWidget {
  const ImageQuestionPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ImageQuestionPageScreenState createState() => ImageQuestionPageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ImageQuestionPageProvider(),
      child: ImageQuestionPageScreen(),
    );
  }
}

class ImageQuestionPageScreenState extends State<ImageQuestionPageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray900,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 23.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 1.h,
                    right: 25.h,
                  ),
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
                ),
              ),
              SizedBox(height: 49.v),
              _buildTwentyEight(context),
              Spacer(),
              SizedBox(height: 4.v),
              _buildImageQuestionPage(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildCheck(context),
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
  Widget _buildTwentyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
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
          SizedBox(height: 17.v),
          Container(
            width: 327.h,
            margin: EdgeInsets.only(right: 27.h),
            child: Text(
              "msg_which_of_the_following".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImageQuestionPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Consumer<ImageQuestionPageProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 151.v,
              crossAxisCount: 2,
              mainAxisSpacing: 55.h,
              crossAxisSpacing: 55.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider
                .imageQuestionPageModelObj.imagequestionpageItemList.length,
            itemBuilder: (context, index) {
              ImagequestionpageItemModel model = provider
                  .imageQuestionPageModelObj.imagequestionpageItemList[index];
              return ImagequestionpageItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCheck(BuildContext context) {
    return CustomElevatedButton(
      width: 132.h,
      text: "lbl_check".tr,
      margin: EdgeInsets.only(
        left: 141.h,
        right: 141.h,
        bottom: 43.v,
      ),
    );
  }
}
