// ignore_for_file: must_be_immutable

part of 'grocery_home_container_bloc.dart';

/// Represents the state of GroceryHomeContainer in the application.
class GroceryHomeContainerState extends Equatable {
  GroceryHomeContainerState({this.groceryHomeContainerModelObj});

  GroceryHomeContainerModel? groceryHomeContainerModelObj;

  @override
  List<Object?> get props => [
        groceryHomeContainerModelObj,
      ];
  GroceryHomeContainerState copyWith(
      {GroceryHomeContainerModel? groceryHomeContainerModelObj}) {
    return GroceryHomeContainerState(
      groceryHomeContainerModelObj:
          groceryHomeContainerModelObj ?? this.groceryHomeContainerModelObj,
    );
  }
}
