// ignore_for_file: must_be_immutable

part of 'grocery_home_bloc.dart';

/// Represents the state of GroceryHome in the application.
class GroceryHomeState extends Equatable {
  GroceryHomeState({
    this.searchController,
    this.selectedDropDownValue,
    this.groceryHomeModelObj,
  });

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  GroceryHomeModel? groceryHomeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        groceryHomeModelObj,
      ];
  GroceryHomeState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    GroceryHomeModel? groceryHomeModelObj,
  }) {
    return GroceryHomeState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      groceryHomeModelObj: groceryHomeModelObj ?? this.groceryHomeModelObj,
    );
  }
}
