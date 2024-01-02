// ignore_for_file: must_be_immutable

part of 'orders_tab_container_bloc.dart';

/// Represents the state of OrdersTabContainer in the application.
class OrdersTabContainerState extends Equatable {
  OrdersTabContainerState({this.ordersTabContainerModelObj});

  OrdersTabContainerModel? ordersTabContainerModelObj;

  @override
  List<Object?> get props => [
        ordersTabContainerModelObj,
      ];
  OrdersTabContainerState copyWith(
      {OrdersTabContainerModel? ordersTabContainerModelObj}) {
    return OrdersTabContainerState(
      ordersTabContainerModelObj:
          ordersTabContainerModelObj ?? this.ordersTabContainerModelObj,
    );
  }
}
