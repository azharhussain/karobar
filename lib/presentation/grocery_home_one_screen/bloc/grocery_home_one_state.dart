// ignore_for_file: must_be_immutable

part of 'grocery_home_one_bloc.dart';

/// Represents the state of GroceryHomeOne in the application.
class GroceryHomeOneState extends Equatable {
  GroceryHomeOneState({
    this.searchController,
    this.groceryHomeOneModelObj,
  });

  TextEditingController? searchController;

  GroceryHomeOneModel? groceryHomeOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        groceryHomeOneModelObj,
      ];
  GroceryHomeOneState copyWith({
    TextEditingController? searchController,
    GroceryHomeOneModel? groceryHomeOneModelObj,
  }) {
    return GroceryHomeOneState(
      searchController: searchController ?? this.searchController,
      groceryHomeOneModelObj:
          groceryHomeOneModelObj ?? this.groceryHomeOneModelObj,
    );
  }
}
