// ignore_for_file: must_be_immutable

part of 'checkout_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Checkout widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CheckoutEvent extends Equatable {}

/// Event that is dispatched when the Checkout widget is first created.
class CheckoutInitialEvent extends CheckoutEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CheckoutEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
