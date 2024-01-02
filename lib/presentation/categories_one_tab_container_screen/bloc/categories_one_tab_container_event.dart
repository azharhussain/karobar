// ignore_for_file: must_be_immutable

part of 'categories_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoriesOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoriesOneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the CategoriesOneTabContainer widget is first created.
class CategoriesOneTabContainerInitialEvent
    extends CategoriesOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
