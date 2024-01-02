// ignore_for_file: must_be_immutable

part of 'shopping_cart_offer_bloc.dart';

/// Represents the state of ShoppingCartOffer in the application.
class ShoppingCartOfferState extends Equatable {
  ShoppingCartOfferState({this.shoppingCartOfferModelObj});

  ShoppingCartOfferModel? shoppingCartOfferModelObj;

  @override
  List<Object?> get props => [
        shoppingCartOfferModelObj,
      ];
  ShoppingCartOfferState copyWith(
      {ShoppingCartOfferModel? shoppingCartOfferModelObj}) {
    return ShoppingCartOfferState(
      shoppingCartOfferModelObj:
          shoppingCartOfferModelObj ?? this.shoppingCartOfferModelObj,
    );
  }
}
