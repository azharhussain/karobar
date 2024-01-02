// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'cardgrid1_item_model.dart';

/// This class defines the variables used in the [products_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductsModel extends Equatable {
  ProductsModel({this.cardgrid1ItemList = const []}) {}

  List<Cardgrid1ItemModel> cardgrid1ItemList;

  ProductsModel copyWith({List<Cardgrid1ItemModel>? cardgrid1ItemList}) {
    return ProductsModel(
      cardgrid1ItemList: cardgrid1ItemList ?? this.cardgrid1ItemList,
    );
  }

  @override
  List<Object?> get props => [cardgrid1ItemList];
}
