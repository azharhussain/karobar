import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/onboarding_v_one_screen/models/onboarding_v_one_model.dart';
part 'onboarding_v_one_event.dart';
part 'onboarding_v_one_state.dart';

/// A bloc that manages the state of a OnboardingVOne according to the event that is dispatched to it.
class OnboardingVOneBloc
    extends Bloc<OnboardingVOneEvent, OnboardingVOneState> {
  OnboardingVOneBloc(OnboardingVOneState initialState) : super(initialState) {
    on<OnboardingVOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingVOneInitialEvent event,
    Emitter<OnboardingVOneState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.groceryHomeContainerScreen,
      );
    });
  }
}
