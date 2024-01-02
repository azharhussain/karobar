import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.bananasText,
    this.priceText,
    this.numberText,
    this.id,
  }) {
    bananasText = bananasText ?? "Bananas";
    priceText = priceText ?? "7.90";
    numberText = numberText ?? "2";
    id = id ?? "";
  }

  String? bananasText;

  String? priceText;

  String? numberText;

  String? id;
}
