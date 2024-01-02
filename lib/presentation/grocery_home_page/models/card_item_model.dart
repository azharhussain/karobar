import '../../../core/app_export.dart';

/// This class is used in the [card_item_widget] screen.
class CardItemModel {
  CardItemModel({
    this.imageClass,
    this.text1,
    this.text2,
    this.id,
  }) {
    imageClass = imageClass ?? ImageConstant.imgSettings;
    text1 = text1 ?? "Get";
    text2 = text2 ?? "50%  OFF";
    id = id ?? "";
  }

  String? imageClass;

  String? text1;

  String? text2;

  String? id;
}
