import '../../../core/app_export.dart';

/// This class is used in the [card2_item_widget] screen.
class Card2ItemModel {
  Card2ItemModel({
    this.fishText,
    this.fromSeaText,
    this.id,
  }) {
    fishText = fishText ?? "Fishes";
    fromSeaText = fromSeaText ?? "From Sea";
    id = id ?? "";
  }

  String? fishText;

  String? fromSeaText;

  String? id;
}
