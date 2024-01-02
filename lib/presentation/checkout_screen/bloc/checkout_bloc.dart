import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/deliveryaddresslist_item_model.dart';
import 'package:aladdin_karobar_app/presentation/checkout_screen/models/checkout_model.dart';
part 'checkout_event.dart';
part 'checkout_state.dart';

/// A bloc that manages the state of a Checkout according to the event that is dispatched to it.
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc(CheckoutState initialState) : super(initialState) {
    on<CheckoutInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CheckoutState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<DeliveryaddresslistItemModel> fillDeliveryaddresslistItemList() {
    return [
      DeliveryaddresslistItemModel(
          homeText: "Home",
          checkmarkImage: ImageConstant.imgCheckmark,
          addressText: "36 green way, Sunamganj",
          editText: "Edit"),
      DeliveryaddresslistItemModel(
          addressText: "Medical road, Halal lab, Sunamganj", editText: "Edit")
    ];
  }

  _onInitialize(
    CheckoutInitialEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
    emit(state.copyWith(
        checkoutModelObj: state.checkoutModelObj?.copyWith(
      deliveryaddresslistItemList: fillDeliveryaddresslistItemList(),
    )));
  }
}
