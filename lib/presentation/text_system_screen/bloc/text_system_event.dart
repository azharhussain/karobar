// ignore_for_file: must_be_immutable

part of 'text_system_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TextSystem widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TextSystemEvent extends Equatable {}

/// Event that is dispatched when the TextSystem widget is first created.
class TextSystemInitialEvent extends TextSystemEvent {
  @override
  List<Object?> get props => [];
}
