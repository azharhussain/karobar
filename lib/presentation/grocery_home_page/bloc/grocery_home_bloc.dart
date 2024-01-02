import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/card_item_model.dart';
import '../models/card1_item_model.dart';
import 'package:aladdin_karobar_app/presentation/grocery_home_page/models/grocery_home_model.dart';
part 'grocery_home_event.dart';
part 'grocery_home_state.dart';

/// A bloc that manages the state of a GroceryHome according to the event that is dispatched to it.
class GroceryHomeBloc extends Bloc<GroceryHomeEvent, GroceryHomeState> {
  GroceryHomeBloc(GroceryHomeState initialState) : super(initialState) {
    on<GroceryHomeInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<GroceryHomeState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<CardItemModel> fillCardItemList() {
    return [
      CardItemModel(
          imageClass: ImageConstant.imgSettings,
          text1: "Get",
          text2: "50%  OFF")
    ];
  }

  List<Card1ItemModel> fillCard1ItemList() {
    return [
      Card1ItemModel(
          text: "Fresh Lemon", text1: "Organic ", text2: "Unit", text3: "12"),
      Card1ItemModel(
          text: "Green Tea", text1: "Organic ", text2: "Unit", text3: "06"),
      Card1ItemModel(text: "Fresh Lemon", text1: "Organic ")
    ];
  }

  _onInitialize(
    GroceryHomeInitialEvent event,
    Emitter<GroceryHomeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        groceryHomeModelObj: state.groceryHomeModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      cardItemList: fillCardItemList(),
      card1ItemList: fillCard1ItemList(),
    )));
  }
}
