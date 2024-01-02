// ignore_for_file: must_be_immutable

part of 'track_order_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrackOrder widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrackOrderEvent extends Equatable {}

/// Event that is dispatched when the TrackOrder widget is first created.
class TrackOrderInitialEvent extends TrackOrderEvent {
  @override
  List<Object?> get props => [];
}
