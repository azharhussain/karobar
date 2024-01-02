import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/products_tab_container_screen/models/products_tab_container_model.dart';
part 'products_tab_container_event.dart';
part 'products_tab_container_state.dart';

/// A bloc that manages the state of a ProductsTabContainer according to the event that is dispatched to it.
class ProductsTabContainerBloc
    extends Bloc<ProductsTabContainerEvent, ProductsTabContainerState> {
  ProductsTabContainerBloc(ProductsTabContainerState initialState)
      : super(initialState) {
    on<ProductsTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductsTabContainerInitialEvent event,
    Emitter<ProductsTabContainerState> emit,
  ) async {}
}
