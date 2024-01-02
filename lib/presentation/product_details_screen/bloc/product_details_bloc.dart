import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/thirtynine_item_model.dart';
import 'package:aladdin_karobar_app/presentation/product_details_screen/models/product_details_model.dart';
part 'product_details_event.dart';
part 'product_details_state.dart';

/// A bloc that manages the state of a ProductDetails according to the event that is dispatched to it.
class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc(ProductDetailsState initialState) : super(initialState) {
    on<ProductDetailsInitialEvent>(_onInitialize);
  }

  List<ThirtynineItemModel> fillThirtynineItemList() {
    return List.generate(1, (index) => ThirtynineItemModel());
  }

  _onInitialize(
    ProductDetailsInitialEvent event,
    Emitter<ProductDetailsState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productDetailsModelObj: state.productDetailsModelObj?.copyWith(
      thirtynineItemList: fillThirtynineItemList(),
    )));
  }
}
