// ignore_for_file: must_be_immutable

part of 'onboarding_v_one_bloc.dart';

/// Represents the state of OnboardingVOne in the application.
class OnboardingVOneState extends Equatable {
  OnboardingVOneState({this.onboardingVOneModelObj});

  OnboardingVOneModel? onboardingVOneModelObj;

  @override
  List<Object?> get props => [
        onboardingVOneModelObj,
      ];
  OnboardingVOneState copyWith({OnboardingVOneModel? onboardingVOneModelObj}) {
    return OnboardingVOneState(
      onboardingVOneModelObj:
          onboardingVOneModelObj ?? this.onboardingVOneModelObj,
    );
  }
}
