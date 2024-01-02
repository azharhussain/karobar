import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/grocery_home_container_screen/models/grocery_home_container_model.dart';
part 'grocery_home_container_event.dart';
part 'grocery_home_container_state.dart';

/// A bloc that manages the state of a GroceryHomeContainer according to the event that is dispatched to it.
class GroceryHomeContainerBloc
    extends Bloc<GroceryHomeContainerEvent, GroceryHomeContainerState> {
  GroceryHomeContainerBloc(GroceryHomeContainerState initialState)
      : super(initialState) {
    on<GroceryHomeContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    GroceryHomeContainerInitialEvent event,
    Emitter<GroceryHomeContainerState> emit,
  ) async {}
}
