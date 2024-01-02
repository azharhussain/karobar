import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:aladdin_karobar_app/presentation/shopping_cart_offer_screen/models/shopping_cart_offer_model.dart';
part 'shopping_cart_offer_event.dart';
part 'shopping_cart_offer_state.dart';

/// A bloc that manages the state of a ShoppingCartOffer according to the event that is dispatched to it.
class ShoppingCartOfferBloc
    extends Bloc<ShoppingCartOfferEvent, ShoppingCartOfferState> {
  ShoppingCartOfferBloc(ShoppingCartOfferState initialState)
      : super(initialState) {
    on<ShoppingCartOfferInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShoppingCartOfferInitialEvent event,
    Emitter<ShoppingCartOfferState> emit,
  ) async {
    emit(state.copyWith(
        shoppingCartOfferModelObj: state.shoppingCartOfferModelObj?.copyWith(
      userprofilelistItemList: fillUserprofilelistItemList(),
    )));
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          bananasText: "Bananas", priceText: "7.90", numberText: "2"),
      UserprofilelistItemModel(
          bananasText: "Package 01", priceText: "7.90", numberText: "2"),
      UserprofilelistItemModel(
          bananasText: "Package 02", priceText: "7.90", numberText: "2")
    ];
  }
}
