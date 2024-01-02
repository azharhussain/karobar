import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:aladdin_karobar_app/presentation/orders_one_screen/models/orders_one_model.dart';
part 'orders_one_event.dart';
part 'orders_one_state.dart';

/// A bloc that manages the state of a OrdersOne according to the event that is dispatched to it.
class OrdersOneBloc extends Bloc<OrdersOneEvent, OrdersOneState> {
  OrdersOneBloc(OrdersOneState initialState) : super(initialState) {
    on<OrdersOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrdersOneInitialEvent event,
    Emitter<OrdersOneState> emit,
  ) async {
    emit(state.copyWith(
        ordersOneModelObj: state.ordersOneModelObj?.copyWith(
      userprofilelist1ItemList: fillUserprofilelist1ItemList(),
    )));
  }

  List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
    return [
      Userprofilelist1ItemModel(
          bananasText: "Bananas", priceText: "7.90", dateText: "02/10/2021"),
      Userprofilelist1ItemModel(
          bananasText: "Orange", priceText: "7.90", dateText: "02/10/2021")
    ];
  }
}
