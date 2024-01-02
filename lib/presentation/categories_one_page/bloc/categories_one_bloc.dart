import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/card3_item_model.dart';
import 'package:aladdin_karobar_app/presentation/categories_one_page/models/categories_one_model.dart';
part 'categories_one_event.dart';
part 'categories_one_state.dart';

/// A bloc that manages the state of a CategoriesOne according to the event that is dispatched to it.
class CategoriesOneBloc extends Bloc<CategoriesOneEvent, CategoriesOneState> {
  CategoriesOneBloc(CategoriesOneState initialState) : super(initialState) {
    on<CategoriesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoriesOneInitialEvent event,
    Emitter<CategoriesOneState> emit,
  ) async {
    emit(state.copyWith(
        categoriesOneModelObj: state.categoriesOneModelObj?.copyWith(
      card3ItemList: fillCard3ItemList(),
    )));
  }

  List<Card3ItemModel> fillCard3ItemList() {
    return [
      Card3ItemModel(
          title: "Big & Small Fishes",
          subtitle: "Fresh from sea",
          startingFrom: "Starting from"),
      Card3ItemModel(
          title: "Halal Meats",
          subtitle: "Organics & Fresh",
          startingFrom: "Starting from")
    ];
  }
}
