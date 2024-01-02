import '../../../core/app_export.dart';

/// This class is used in the [card1_item_widget] screen.
class Card1ItemModel {
  Card1ItemModel({
    this.text,
    this.text1,
    this.text2,
    this.text3,
    this.id,
  }) {
    text = text ?? "Fresh Lemon";
    text1 = text1 ?? "Organic ";
    text2 = text2 ?? "Unit";
    text3 = text3 ?? "12";
    id = id ?? "";
  }

  String? text;

  String? text1;

  String? text2;

  String? text3;

  String? id;
}
