// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'card2_item_model.dart';

/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel extends Equatable {
  CategoriesModel({this.card2ItemList = const []}) {}

  List<Card2ItemModel> card2ItemList;

  CategoriesModel copyWith({List<Card2ItemModel>? card2ItemList}) {
    return CategoriesModel(
      card2ItemList: card2ItemList ?? this.card2ItemList,
    );
  }

  @override
  List<Object?> get props => [card2ItemList];
}
