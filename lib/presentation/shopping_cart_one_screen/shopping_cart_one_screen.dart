import '../shopping_cart_one_screen/widgets/cardlist_item_widget.dart';
import 'bloc/shopping_cart_one_bloc.dart';
import 'models/cardlist_item_model.dart';
import 'models/shopping_cart_one_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:aladdin_karobar_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ShoppingCartOneScreen extends StatelessWidget {
  const ShoppingCartOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ShoppingCartOneBloc>(
      create: (context) => ShoppingCartOneBloc(ShoppingCartOneState(
        shoppingCartOneModelObj: ShoppingCartOneModel(),
      ))
        ..add(ShoppingCartOneInitialEvent()),
      child: ShoppingCartOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 33.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Column(
                children: [
                  _buildCardList(context),
                  SizedBox(height: 9.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 18.h),
                      child: Text(
                        "lbl_edit".tr,
                        style: CustomTextStyles.labelLargePrimary,
                      ),
                    ),
                  ),
                  SizedBox(height: 60.v),
                  _buildTextBgButton(context),
                ],
              ),
            ),
          ),
        ),
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
  Widget _buildCardList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 12.h,
      ),
      child: BlocSelector<ShoppingCartOneBloc, ShoppingCartOneState,
          ShoppingCartOneModel?>(
        selector: (state) => state.shoppingCartOneModelObj,
        builder: (context, shoppingCartOneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.5.v),
                child: SizedBox(
                  width: 327.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.indigo5001,
                  ),
                ),
              );
            },
            itemCount: shoppingCartOneModelObj?.cardlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              CardlistItemModel model =
                  shoppingCartOneModelObj?.cardlistItemList[index] ??
                      CardlistItemModel();
              return CardlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTextBgButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildDeliveryRow(
              context,
              deliveryText: "lbl_subtotal".tr,
              priceText: "lbl_35_96".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildDeliveryRow(
              context,
              deliveryText: "lbl_delivery".tr,
              priceText: "lbl_2_00".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildDeliveryRow(
              context,
              deliveryText: "lbl_total".tr,
              priceText: "lbl_37_96".tr,
            ),
          ),
          SizedBox(height: 34.v),
          CustomElevatedButton(
            text: "msg_proceed_to_checkout".tr,
          ),
          SizedBox(height: 52.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDeliveryRow(
    BuildContext context, {
    required String deliveryText,
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          deliveryText,
          style: CustomTextStyles.bodyMediumBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Text(
          priceText,
          style: CustomTextStyles.titleSmallGray90001Medium.copyWith(
            color: appTheme.gray90001,
          ),
        ),
      ],
    );
  }
}
