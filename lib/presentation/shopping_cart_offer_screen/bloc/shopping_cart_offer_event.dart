// ignore_for_file: must_be_immutable

part of 'shopping_cart_offer_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShoppingCartOffer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShoppingCartOfferEvent extends Equatable {}

/// Event that is dispatched when the ShoppingCartOffer widget is first created.
class ShoppingCartOfferInitialEvent extends ShoppingCartOfferEvent {
  @override
  List<Object?> get props => [];
}
