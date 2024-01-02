import '../../../core/app_export.dart';

/// This class is used in the [cardlist_item_widget] screen.
class CardlistItemModel {
  CardlistItemModel({
    this.titleText,
    this.priceText,
    this.quantityText,
    this.id,
  }) {
    titleText = titleText ?? "Bananas";
    priceText = priceText ?? "7.90";
    quantityText = quantityText ?? "2";
    id = id ?? "";
  }

  String? titleText;

  String? priceText;

  String? quantityText;

  String? id;
}
