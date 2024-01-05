import '../../../core/app_export.dart';

/// This class is used in the [imagequestionpage_item_widget] screen.
class ImagequestionpageItemModel {
  ImagequestionpageItemModel({
    this.image,
    this.close,
    this.id,
  }) {
    image = image ?? ImageConstant.imgGroup23;
    close = close ?? ImageConstant.imgClose;
    id = id ?? "";
  }

  String? image;

  String? close;

  String? id;
}
