// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'thirtynine_item_model.dart';

/// This class defines the variables used in the [product_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailsModel extends Equatable {
  ProductDetailsModel({this.thirtynineItemList = const []}) {}

  List<ThirtynineItemModel> thirtynineItemList;

  ProductDetailsModel copyWith(
      {List<ThirtynineItemModel>? thirtynineItemList}) {
    return ProductDetailsModel(
      thirtynineItemList: thirtynineItemList ?? this.thirtynineItemList,
    );
  }

  @override
  List<Object?> get props => [thirtynineItemList];
}
