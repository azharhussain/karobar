import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cardgrid1_item_model.dart';
import 'package:aladdin_karobar_app/presentation/products_page/models/products_model.dart';
part 'products_event.dart';
part 'products_state.dart';

/// A bloc that manages the state of a Products according to the event that is dispatched to it.
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(ProductsState initialState) : super(initialState) {
    on<ProductsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductsInitialEvent event,
    Emitter<ProductsState> emit,
  ) async {
    emit(state.copyWith(
        productsModelObj: state.productsModelObj?.copyWith(
      cardgrid1ItemList: fillCardgrid1ItemList(),
    )));
  }

  List<Cardgrid1ItemModel> fillCardgrid1ItemList() {
    return [Cardgrid1ItemModel(price: "325", productName: "Clown Tang.H03")];
  }
}
