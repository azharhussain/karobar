// ignore_for_file: must_be_immutable

part of 'categories_one_bloc.dart';

/// Represents the state of CategoriesOne in the application.
class CategoriesOneState extends Equatable {
  CategoriesOneState({this.categoriesOneModelObj});

  CategoriesOneModel? categoriesOneModelObj;

  @override
  List<Object?> get props => [
        categoriesOneModelObj,
      ];
  CategoriesOneState copyWith({CategoriesOneModel? categoriesOneModelObj}) {
    return CategoriesOneState(
      categoriesOneModelObj:
          categoriesOneModelObj ?? this.categoriesOneModelObj,
    );
  }
}
