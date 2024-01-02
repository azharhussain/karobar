// ignore_for_file: must_be_immutable

part of 'grocery_home_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GroceryHomeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GroceryHomeOneEvent extends Equatable {}

/// Event that is dispatched when the GroceryHomeOne widget is first created.
class GroceryHomeOneInitialEvent extends GroceryHomeOneEvent {
  @override
  List<Object?> get props => [];
}
