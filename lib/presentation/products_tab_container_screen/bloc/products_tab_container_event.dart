// ignore_for_file: must_be_immutable

part of 'products_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProductsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProductsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ProductsTabContainer widget is first created.
class ProductsTabContainerInitialEvent extends ProductsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
