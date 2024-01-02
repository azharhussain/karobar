// ignore_for_file: must_be_immutable

part of 'orders_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrdersOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrdersOneEvent extends Equatable {}

/// Event that is dispatched when the OrdersOne widget is first created.
class OrdersOneInitialEvent extends OrdersOneEvent {
  @override
  List<Object?> get props => [];
}
