// ignore_for_file: must_be_immutable

part of 'categories_one_tab_container_bloc.dart';

/// Represents the state of CategoriesOneTabContainer in the application.
class CategoriesOneTabContainerState extends Equatable {
  CategoriesOneTabContainerState({this.categoriesOneTabContainerModelObj});

  CategoriesOneTabContainerModel? categoriesOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        categoriesOneTabContainerModelObj,
      ];
  CategoriesOneTabContainerState copyWith(
      {CategoriesOneTabContainerModel? categoriesOneTabContainerModelObj}) {
    return CategoriesOneTabContainerState(
      categoriesOneTabContainerModelObj: categoriesOneTabContainerModelObj ??
          this.categoriesOneTabContainerModelObj,
    );
  }
}
