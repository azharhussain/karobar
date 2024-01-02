import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:aladdin_karobar_app/presentation/orders_page/models/orders_model.dart';
part 'orders_event.dart';
part 'orders_state.dart';

/// A bloc that manages the state of a Orders according to the event that is dispatched to it.
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc(OrdersState initialState) : super(initialState) {
    on<OrdersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrdersInitialEvent event,
    Emitter<OrdersState> emit,
  ) async {
    emit(state.copyWith(
        ordersModelObj: state.ordersModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(freshOrangeText: "Fresh Orange", priceText: "7.90")
    ];
  }
}
