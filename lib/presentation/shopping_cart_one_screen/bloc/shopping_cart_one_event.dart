// ignore_for_file: must_be_immutable

part of 'shopping_cart_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShoppingCartOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShoppingCartOneEvent extends Equatable {}

/// Event that is dispatched when the ShoppingCartOne widget is first created.
class ShoppingCartOneInitialEvent extends ShoppingCartOneEvent {
  @override
  List<Object?> get props => [];
}
