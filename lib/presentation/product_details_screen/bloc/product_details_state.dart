// ignore_for_file: must_be_immutable

part of 'product_details_bloc.dart';

/// Represents the state of ProductDetails in the application.
class ProductDetailsState extends Equatable {
  ProductDetailsState({
    this.sliderIndex = 0,
    this.productDetailsModelObj,
  });

  ProductDetailsModel? productDetailsModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productDetailsModelObj,
      ];
  ProductDetailsState copyWith({
    int? sliderIndex,
    ProductDetailsModel? productDetailsModelObj,
  }) {
    return ProductDetailsState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productDetailsModelObj:
          productDetailsModelObj ?? this.productDetailsModelObj,
    );
  }
}
