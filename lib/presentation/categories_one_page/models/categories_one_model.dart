// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'card3_item_model.dart';

/// This class defines the variables used in the [categories_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesOneModel extends Equatable {
  CategoriesOneModel({this.card3ItemList = const []}) {}

  List<Card3ItemModel> card3ItemList;

  CategoriesOneModel copyWith({List<Card3ItemModel>? card3ItemList}) {
    return CategoriesOneModel(
      card3ItemList: card3ItemList ?? this.card3ItemList,
    );
  }

  @override
  List<Object?> get props => [card3ItemList];
}
