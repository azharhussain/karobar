// ignore_for_file: must_be_immutable

part of 'products_bloc.dart';

/// Represents the state of Products in the application.
class ProductsState extends Equatable {
  ProductsState({this.productsModelObj});

  ProductsModel? productsModelObj;

  @override
  List<Object?> get props => [
        productsModelObj,
      ];
  ProductsState copyWith({ProductsModel? productsModelObj}) {
    return ProductsState(
      productsModelObj: productsModelObj ?? this.productsModelObj,
    );
  }
}
