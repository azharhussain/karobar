// ignore_for_file: must_be_immutable

part of 'shopping_cart_one_bloc.dart';

/// Represents the state of ShoppingCartOne in the application.
class ShoppingCartOneState extends Equatable {
  ShoppingCartOneState({this.shoppingCartOneModelObj});

  ShoppingCartOneModel? shoppingCartOneModelObj;

  @override
  List<Object?> get props => [
        shoppingCartOneModelObj,
      ];
  ShoppingCartOneState copyWith(
      {ShoppingCartOneModel? shoppingCartOneModelObj}) {
    return ShoppingCartOneState(
      shoppingCartOneModelObj:
          shoppingCartOneModelObj ?? this.shoppingCartOneModelObj,
    );
  }
}
