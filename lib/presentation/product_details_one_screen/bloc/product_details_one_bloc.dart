import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/product_details_one_screen/models/product_details_one_model.dart';
part 'product_details_one_event.dart';
part 'product_details_one_state.dart';

/// A bloc that manages the state of a ProductDetailsOne according to the event that is dispatched to it.
class ProductDetailsOneBloc
    extends Bloc<ProductDetailsOneEvent, ProductDetailsOneState> {
  ProductDetailsOneBloc(ProductDetailsOneState initialState)
      : super(initialState) {
    on<ProductDetailsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductDetailsOneInitialEvent event,
    Emitter<ProductDetailsOneState> emit,
  ) async {}
}
