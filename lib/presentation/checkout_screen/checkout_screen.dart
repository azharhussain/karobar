import '../checkout_screen/widgets/deliveryaddresslist_item_widget.dart';
import 'bloc/checkout_bloc.dart';
import 'models/checkout_model.dart';
import 'models/deliveryaddresslist_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:aladdin_karobar_app/widgets/custom_elevated_button.dart';
import 'package:aladdin_karobar_app/widgets/custom_radio_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CheckoutBloc>(
      create: (context) => CheckoutBloc(CheckoutState(
        checkoutModelObj: CheckoutModel(),
      ))
        ..add(CheckoutInitialEvent()),
      child: CheckoutScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 54.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "msg_delivery_address".tr,
                    style: CustomTextStyles.bodyLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              _buildDeliveryAddressList(context),
              SizedBox(height: 36.v),
              _buildAddButtonPlus(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAddCard(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup73,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "msg_shopping_cart_5".tr,
        margin: EdgeInsets.only(left: 25.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryAddressList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: BlocSelector<CheckoutBloc, CheckoutState, CheckoutModel?>(
        selector: (state) => state.checkoutModelObj,
        builder: (context, checkoutModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount:
                checkoutModelObj?.deliveryaddresslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              DeliveryaddresslistItemModel model =
                  checkoutModelObj?.deliveryaddresslistItemList[index] ??
                      DeliveryaddresslistItemModel();
              return DeliveryaddresslistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddButtonPlus(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.h),
      child: DottedBorder(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        padding: EdgeInsets.only(
          left: 2.h,
          top: 2.v,
          right: 2.h,
          bottom: 2.v,
        ),
        strokeWidth: 2.h,
        radius: Radius.circular(20),
        borderType: BorderType.RRect,
        dashPattern: [
          13,
          13,
        ],
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 89.h,
            vertical: 25.v,
          ),
          decoration: AppDecoration.outlinePrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              BlocSelector<CheckoutBloc, CheckoutState, String?>(
                selector: (state) => state.radioGroup,
                builder: (context, radioGroup) {
                  return CustomRadioButton(
                    text: "lbl_add_new_address".tr,
                    value: "lbl_add_new_address".tr,
                    groupValue: radioGroup,
                    onChange: (value) {
                      context
                          .read<CheckoutBloc>()
                          .add(ChangeRadioButtonEvent(value: value));
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddCard(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add_card".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 31.v,
      ),
    );
  }
}
