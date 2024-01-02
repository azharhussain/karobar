// ignore_for_file: must_be_immutable

part of 'product_details_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductDetailsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductDetailsOneEvent extends Equatable {}

/// Event that is dispatched when the ProductDetailsOne widget is first created.
class ProductDetailsOneInitialEvent extends ProductDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
