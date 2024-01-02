import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/add_new_card_screen/models/add_new_card_model.dart';
part 'add_new_card_event.dart';
part 'add_new_card_state.dart';

/// A bloc that manages the state of a AddNewCard according to the event that is dispatched to it.
class AddNewCardBloc extends Bloc<AddNewCardEvent, AddNewCardState> {
  AddNewCardBloc(AddNewCardState initialState) : super(initialState) {
    on<AddNewCardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddNewCardInitialEvent event,
    Emitter<AddNewCardState> emit,
  ) async {
    emit(state.copyWith(
      cardHolderNameController: TextEditingController(),
      cardNumberController: TextEditingController(),
      cvcController: TextEditingController(),
    ));
  }
}
