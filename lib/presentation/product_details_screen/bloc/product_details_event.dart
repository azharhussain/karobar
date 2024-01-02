// ignore_for_file: must_be_immutable

part of 'product_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductDetailsEvent extends Equatable {}

/// Event that is dispatched when the ProductDetails widget is first created.
class ProductDetailsInitialEvent extends ProductDetailsEvent {
  @override
  List<Object?> get props => [];
}
