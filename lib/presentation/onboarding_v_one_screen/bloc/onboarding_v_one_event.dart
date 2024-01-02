// ignore_for_file: must_be_immutable

part of 'onboarding_v_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingVOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingVOneEvent extends Equatable {}

/// Event that is dispatched when the OnboardingVOne widget is first created.
class OnboardingVOneInitialEvent extends OnboardingVOneEvent {
  @override
  List<Object?> get props => [];
}
