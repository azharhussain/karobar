// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

/// Represents the state of AddNewCard in the application.
class AddNewCardState extends Equatable {
  AddNewCardState({
    this.cardHolderNameController,
    this.cardNumberController,
    this.cvcController,
    this.addNewCardModelObj,
  });

  TextEditingController? cardHolderNameController;

  TextEditingController? cardNumberController;

  TextEditingController? cvcController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        cardHolderNameController,
        cardNumberController,
        cvcController,
        addNewCardModelObj,
      ];
  AddNewCardState copyWith({
    TextEditingController? cardHolderNameController,
    TextEditingController? cardNumberController,
    TextEditingController? cvcController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      cardHolderNameController:
          cardHolderNameController ?? this.cardHolderNameController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      cvcController: cvcController ?? this.cvcController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
