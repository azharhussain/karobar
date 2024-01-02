import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/product_details_two_screen/models/product_details_two_model.dart';
part 'product_details_two_event.dart';
part 'product_details_two_state.dart';

/// A bloc that manages the state of a ProductDetailsTwo according to the event that is dispatched to it.
class ProductDetailsTwoBloc
    extends Bloc<ProductDetailsTwoEvent, ProductDetailsTwoState> {
  ProductDetailsTwoBloc(ProductDetailsTwoState initialState)
      : super(initialState) {
    on<ProductDetailsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductDetailsTwoInitialEvent event,
    Emitter<ProductDetailsTwoState> emit,
  ) async {}
}
