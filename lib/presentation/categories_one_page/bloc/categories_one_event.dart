// ignore_for_file: must_be_immutable

part of 'categories_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoriesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoriesOneEvent extends Equatable {}

/// Event that is dispatched when the CategoriesOne widget is first created.
class CategoriesOneInitialEvent extends CategoriesOneEvent {
  @override
  List<Object?> get props => [];
}
