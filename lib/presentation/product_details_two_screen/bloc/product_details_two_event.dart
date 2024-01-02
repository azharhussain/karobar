// ignore_for_file: must_be_immutable

part of 'product_details_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductDetailsTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductDetailsTwoEvent extends Equatable {}

/// Event that is dispatched when the ProductDetailsTwo widget is first created.
class ProductDetailsTwoInitialEvent extends ProductDetailsTwoEvent {
  @override
  List<Object?> get props => [];
}
