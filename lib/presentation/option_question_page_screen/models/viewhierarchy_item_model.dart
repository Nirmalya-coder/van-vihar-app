import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.text1,
    this.lion,
    this.text3,
    this.id,
  }) {
    text1 = text1 ?? "Lion";
    lion = lion ?? "Lion";
    text3 = text3 ?? "Lion";
    id = id ?? "";
  }

  String? text1;

  String? lion;

  String? text3;

  String? id;
}
