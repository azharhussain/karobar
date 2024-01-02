import '../../../core/app_export.dart';

/// This class is used in the [card3_item_widget] screen.
class Card3ItemModel {
  Card3ItemModel({
    this.title,
    this.subtitle,
    this.startingFrom,
    this.id,
  }) {
    title = title ?? "Big & Small Fishes";
    subtitle = subtitle ?? "Fresh from sea";
    startingFrom = startingFrom ?? "Starting from";
    id = id ?? "";
  }

  String? title;

  String? subtitle;

  String? startingFrom;

  String? id;
}
