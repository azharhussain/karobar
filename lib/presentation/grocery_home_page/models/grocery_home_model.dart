// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:aladdin_karobar_app/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'card_item_model.dart';
import 'card1_item_model.dart';

/// This class defines the variables used in the [grocery_home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class GroceryHomeModel extends Equatable {
  GroceryHomeModel({
    this.dropdownItemList = const [],
    this.cardItemList = const [],
    this.card1ItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<CardItemModel> cardItemList;

  List<Card1ItemModel> card1ItemList;

  GroceryHomeModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<CardItemModel>? cardItemList,
    List<Card1ItemModel>? card1ItemList,
  }) {
    return GroceryHomeModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      cardItemList: cardItemList ?? this.cardItemList,
      card1ItemList: card1ItemList ?? this.card1ItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, cardItemList, card1ItemList];
}
