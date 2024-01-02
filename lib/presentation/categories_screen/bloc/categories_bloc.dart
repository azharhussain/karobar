import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/card2_item_model.dart';
import 'package:aladdin_karobar_app/presentation/categories_screen/models/categories_model.dart';
part 'categories_event.dart';
part 'categories_state.dart';

/// A bloc that manages the state of a Categories according to the event that is dispatched to it.
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc(CategoriesState initialState) : super(initialState) {
    on<CategoriesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoriesInitialEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    emit(state.copyWith(
        categoriesModelObj: state.categoriesModelObj?.copyWith(
      card2ItemList: fillCard2ItemList(),
    )));
  }

  List<Card2ItemModel> fillCard2ItemList() {
    return [
      Card2ItemModel(fishText: "Fishes", fromSeaText: "From Sea"),
      Card2ItemModel(fishText: "Meats", fromSeaText: "Organic"),
      Card2ItemModel(fishText: "Vegetables", fromSeaText: "Organic"),
      Card2ItemModel(fishText: "Fruits", fromSeaText: "Fresh & Organic"),
      Card2ItemModel(fishText: "Juices", fromSeaText: "From Sea"),
      Card2ItemModel(fishText: "Cooking needs", fromSeaText: "From Sea")
    ];
  }
}
