// ignore_for_file: must_be_immutable

part of 'categories_bloc.dart';

/// Represents the state of Categories in the application.
class CategoriesState extends Equatable {
  CategoriesState({this.categoriesModelObj});

  CategoriesModel? categoriesModelObj;

  @override
  List<Object?> get props => [
        categoriesModelObj,
      ];
  CategoriesState copyWith({CategoriesModel? categoriesModelObj}) {
    return CategoriesState(
      categoriesModelObj: categoriesModelObj ?? this.categoriesModelObj,
    );
  }
}
