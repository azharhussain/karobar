// ignore_for_file: must_be_immutable

part of 'grocery_home_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GroceryHomeContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GroceryHomeContainerEvent extends Equatable {}

/// Event that is dispatched when the GroceryHomeContainer widget is first created.
class GroceryHomeContainerInitialEvent extends GroceryHomeContainerEvent {
  @override
  List<Object?> get props => [];
}
