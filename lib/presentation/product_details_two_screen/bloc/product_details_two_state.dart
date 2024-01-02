// ignore_for_file: must_be_immutable

part of 'product_details_two_bloc.dart';

/// Represents the state of ProductDetailsTwo in the application.
class ProductDetailsTwoState extends Equatable {
  ProductDetailsTwoState({this.productDetailsTwoModelObj});

  ProductDetailsTwoModel? productDetailsTwoModelObj;

  @override
  List<Object?> get props => [
        productDetailsTwoModelObj,
      ];
  ProductDetailsTwoState copyWith(
      {ProductDetailsTwoModel? productDetailsTwoModelObj}) {
    return ProductDetailsTwoState(
      productDetailsTwoModelObj:
          productDetailsTwoModelObj ?? this.productDetailsTwoModelObj,
    );
  }
}
