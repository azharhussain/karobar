import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/text_system_screen/models/text_system_model.dart';
part 'text_system_event.dart';
part 'text_system_state.dart';

/// A bloc that manages the state of a TextSystem according to the event that is dispatched to it.
class TextSystemBloc extends Bloc<TextSystemEvent, TextSystemState> {
  TextSystemBloc(TextSystemState initialState) : super(initialState) {
    on<TextSystemInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TextSystemInitialEvent event,
    Emitter<TextSystemState> emit,
  ) async {}
}
