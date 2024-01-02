// ignore_for_file: must_be_immutable

part of 'checkout_bloc.dart';

/// Represents the state of Checkout in the application.
class CheckoutState extends Equatable {
  CheckoutState({
    this.radioGroup = "",
    this.checkoutModelObj,
  });

  CheckoutModel? checkoutModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        checkoutModelObj,
      ];
  CheckoutState copyWith({
    String? radioGroup,
    CheckoutModel? checkoutModelObj,
  }) {
    return CheckoutState(
      radioGroup: radioGroup ?? this.radioGroup,
      checkoutModelObj: checkoutModelObj ?? this.checkoutModelObj,
    );
  }
}
