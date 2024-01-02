import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cardgrid_item_model.dart';
import 'package:aladdin_karobar_app/presentation/grocery_home_one_screen/models/grocery_home_one_model.dart';
part 'grocery_home_one_event.dart';
part 'grocery_home_one_state.dart';

/// A bloc that manages the state of a GroceryHomeOne according to the event that is dispatched to it.
class GroceryHomeOneBloc
    extends Bloc<GroceryHomeOneEvent, GroceryHomeOneState> {
  GroceryHomeOneBloc(GroceryHomeOneState initialState) : super(initialState) {
    on<GroceryHomeOneInitialEvent>(_onInitialize);
  }

  List<CardgridItemModel> fillCardgridItemList() {
    return [
      CardgridItemModel(
          userImage: ImageConstant.imgSettingsBlueGray200,
          priceText: "325",
          descriptionText: "Orange Package 1 | 1 bundle"),
      CardgridItemModel(
          userImage: ImageConstant.imgSettingsBlueGray200,
          priceText: "89",
          descriptionText: "Green Tea Package 2 | 1 bundle")
    ];
  }

  _onInitialize(
    GroceryHomeOneInitialEvent event,
    Emitter<GroceryHomeOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        groceryHomeOneModelObj: state.groceryHomeOneModelObj?.copyWith(
      cardgridItemList: fillCardgridItemList(),
    )));
  }
}
