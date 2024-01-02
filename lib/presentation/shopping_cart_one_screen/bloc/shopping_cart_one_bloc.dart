import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cardlist_item_model.dart';
import 'package:aladdin_karobar_app/presentation/shopping_cart_one_screen/models/shopping_cart_one_model.dart';
part 'shopping_cart_one_event.dart';
part 'shopping_cart_one_state.dart';

/// A bloc that manages the state of a ShoppingCartOne according to the event that is dispatched to it.
class ShoppingCartOneBloc
    extends Bloc<ShoppingCartOneEvent, ShoppingCartOneState> {
  ShoppingCartOneBloc(ShoppingCartOneState initialState) : super(initialState) {
    on<ShoppingCartOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShoppingCartOneInitialEvent event,
    Emitter<ShoppingCartOneState> emit,
  ) async {
    emit(state.copyWith(
        shoppingCartOneModelObj: state.shoppingCartOneModelObj?.copyWith(
      cardlistItemList: fillCardlistItemList(),
    )));
  }

  List<CardlistItemModel> fillCardlistItemList() {
    return [
      CardlistItemModel(
          titleText: "Bananas", priceText: "7.90", quantityText: "2"),
      CardlistItemModel(
          titleText: "Package 01", priceText: "7.90", quantityText: "2"),
      CardlistItemModel(
          titleText: "Package 02", priceText: "7.90", quantityText: "2"),
      CardlistItemModel(
          titleText: "Bananas", priceText: "7.90", quantityText: "2"),
      CardlistItemModel(
          titleText: "Package 03", priceText: "7.90", quantityText: "2")
    ];
  }
}
