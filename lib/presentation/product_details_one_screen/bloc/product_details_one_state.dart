// ignore_for_file: must_be_immutable

part of 'product_details_one_bloc.dart';

/// Represents the state of ProductDetailsOne in the application.
class ProductDetailsOneState extends Equatable {
  ProductDetailsOneState({this.productDetailsOneModelObj});

  ProductDetailsOneModel? productDetailsOneModelObj;

  @override
  List<Object?> get props => [
        productDetailsOneModelObj,
      ];
  ProductDetailsOneState copyWith(
      {ProductDetailsOneModel? productDetailsOneModelObj}) {
    return ProductDetailsOneState(
      productDetailsOneModelObj:
          productDetailsOneModelObj ?? this.productDetailsOneModelObj,
    );
  }
}
