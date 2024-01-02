import '../../../core/app_export.dart';

/// This class is used in the [cardgrid_item_widget] screen.
class CardgridItemModel {
  CardgridItemModel({
    this.userImage,
    this.priceText,
    this.descriptionText,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgSettingsBlueGray200;
    priceText = priceText ?? "325";
    descriptionText = descriptionText ?? "Orange Package 1 | 1 bundle";
    id = id ?? "";
  }

  String? userImage;

  String? priceText;

  String? descriptionText;

  String? id;
}
