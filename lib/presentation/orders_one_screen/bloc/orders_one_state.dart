// ignore_for_file: must_be_immutable

part of 'orders_one_bloc.dart';

/// Represents the state of OrdersOne in the application.
class OrdersOneState extends Equatable {
  OrdersOneState({this.ordersOneModelObj});

  OrdersOneModel? ordersOneModelObj;

  @override
  List<Object?> get props => [
        ordersOneModelObj,
      ];
  OrdersOneState copyWith({OrdersOneModel? ordersOneModelObj}) {
    return OrdersOneState(
      ordersOneModelObj: ordersOneModelObj ?? this.ordersOneModelObj,
    );
  }
}
