// ignore_for_file: must_be_immutable

part of 'products_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Products widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductsEvent extends Equatable {}

/// Event that is dispatched when the Products widget is first created.
class ProductsInitialEvent extends ProductsEvent {
  @override
  List<Object?> get props => [];
}
