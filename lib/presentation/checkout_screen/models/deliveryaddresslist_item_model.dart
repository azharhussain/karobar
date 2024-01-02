import '../../../core/app_export.dart';

/// This class is used in the [deliveryaddresslist_item_widget] screen.
class DeliveryaddresslistItemModel {
  DeliveryaddresslistItemModel({
    this.homeText,
    this.checkmarkImage,
    this.addressText,
    this.editText,
    this.id,
  }) {
    homeText = homeText ?? "Home";
    checkmarkImage = checkmarkImage ?? ImageConstant.imgCheckmark;
    addressText = addressText ?? "36 green way, Sunamganj";
    editText = editText ?? "Edit";
    id = id ?? "";
  }

  String? homeText;

  String? checkmarkImage;

  String? addressText;

  String? editText;

  String? id;
}
