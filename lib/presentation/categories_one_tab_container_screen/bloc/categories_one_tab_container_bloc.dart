import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/categories_one_tab_container_screen/models/categories_one_tab_container_model.dart';
part 'categories_one_tab_container_event.dart';
part 'categories_one_tab_container_state.dart';

/// A bloc that manages the state of a CategoriesOneTabContainer according to the event that is dispatched to it.
class CategoriesOneTabContainerBloc extends Bloc<CategoriesOneTabContainerEvent,
    CategoriesOneTabContainerState> {
  CategoriesOneTabContainerBloc(CategoriesOneTabContainerState initialState)
      : super(initialState) {
    on<CategoriesOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoriesOneTabContainerInitialEvent event,
    Emitter<CategoriesOneTabContainerState> emit,
  ) async {}
}
