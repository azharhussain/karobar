// ignore_for_file: must_be_immutable

part of 'products_tab_container_bloc.dart';

/// Represents the state of ProductsTabContainer in the application.
class ProductsTabContainerState extends Equatable {
  ProductsTabContainerState({this.productsTabContainerModelObj});

  ProductsTabContainerModel? productsTabContainerModelObj;

  @override
  List<Object?> get props => [
        productsTabContainerModelObj,
      ];
  ProductsTabContainerState copyWith(
      {ProductsTabContainerModel? productsTabContainerModelObj}) {
    return ProductsTabContainerState(
      productsTabContainerModelObj:
          productsTabContainerModelObj ?? this.productsTabContainerModelObj,
    );
  }
}
