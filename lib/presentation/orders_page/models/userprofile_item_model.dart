import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.freshOrangeText,
    this.priceText,
    this.id,
  }) {
    freshOrangeText = freshOrangeText ?? "Fresh Orange";
    priceText = priceText ?? "7.90";
    id = id ?? "";
  }

  String? freshOrangeText;

  String? priceText;

  String? id;
}
