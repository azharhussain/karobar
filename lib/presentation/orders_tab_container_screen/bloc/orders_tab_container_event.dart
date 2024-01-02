// ignore_for_file: must_be_immutable

part of 'orders_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrdersTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrdersTabContainerEvent extends Equatable {}

/// Event that is dispatched when the OrdersTabContainer widget is first created.
class OrdersTabContainerInitialEvent extends OrdersTabContainerEvent {
  @override
  List<Object?> get props => [];
}
