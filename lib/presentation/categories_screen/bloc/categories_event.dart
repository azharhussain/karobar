// ignore_for_file: must_be_immutable

part of 'categories_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Categories widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoriesEvent extends Equatable {}

/// Event that is dispatched when the Categories widget is first created.
class CategoriesInitialEvent extends CategoriesEvent {
  @override
  List<Object?> get props => [];
}
