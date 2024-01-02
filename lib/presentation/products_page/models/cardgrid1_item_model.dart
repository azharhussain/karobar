import '../../../core/app_export.dart';

/// This class is used in the [cardgrid1_item_widget] screen.
class Cardgrid1ItemModel {
  Cardgrid1ItemModel({
    this.price,
    this.productName,
    this.id,
  }) {
    price = price ?? "325";
    productName = productName ?? "Clown Tang.H03";
    id = id ?? "";
  }

  String? price;

  String? productName;

  String? id;
}
