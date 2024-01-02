// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'cardlist_item_model.dart';

/// This class defines the variables used in the [shopping_cart_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShoppingCartOneModel extends Equatable {
  ShoppingCartOneModel({this.cardlistItemList = const []}) {}

  List<CardlistItemModel> cardlistItemList;

  ShoppingCartOneModel copyWith({List<CardlistItemModel>? cardlistItemList}) {
    return ShoppingCartOneModel(
      cardlistItemList: cardlistItemList ?? this.cardlistItemList,
    );
  }

  @override
  List<Object?> get props => [cardlistItemList];
}
