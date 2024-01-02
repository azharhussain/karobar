import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/orders_tab_container_screen/models/orders_tab_container_model.dart';
part 'orders_tab_container_event.dart';
part 'orders_tab_container_state.dart';

/// A bloc that manages the state of a OrdersTabContainer according to the event that is dispatched to it.
class OrdersTabContainerBloc
    extends Bloc<OrdersTabContainerEvent, OrdersTabContainerState> {
  OrdersTabContainerBloc(OrdersTabContainerState initialState)
      : super(initialState) {
    on<OrdersTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrdersTabContainerInitialEvent event,
    Emitter<OrdersTabContainerState> emit,
  ) async {}
}
