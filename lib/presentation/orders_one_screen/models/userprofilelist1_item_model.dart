import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel({
    this.bananasText,
    this.priceText,
    this.dateText,
    this.id,
  }) {
    bananasText = bananasText ?? "Bananas";
    priceText = priceText ?? "7.90";
    dateText = dateText ?? "02/10/2021";
    id = id ?? "";
  }

  String? bananasText;

  String? priceText;

  String? dateText;

  String? id;
}
