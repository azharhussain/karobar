import '../shopping_cart_offer_screen/widgets/userprofilelist_item_widget.dart';
import 'bloc/shopping_cart_offer_bloc.dart';
import 'models/shopping_cart_offer_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:aladdin_karobar_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ShoppingCartOfferScreen extends StatelessWidget {
  const ShoppingCartOfferScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ShoppingCartOfferBloc>(
      create: (context) => ShoppingCartOfferBloc(ShoppingCartOfferState(
        shoppingCartOfferModelObj: ShoppingCartOfferModel(),
      ))
        ..add(ShoppingCartOfferInitialEvent()),
      child: ShoppingCartOfferScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBackgroundStack(context),
              SizedBox(height: 30.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                      children: [
                        _buildUserProfileList(context),
                        SizedBox(height: 10.v),
                        _buildTextRow(context),
                        SizedBox(height: 17.v),
                        _buildTextBgButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackgroundStack(BuildContext context) {
    return SizedBox(
      height: 294.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBg,
            height: 291.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 294.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle17823,
                    height: 49.v,
                    width: 375.h,
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      height: 294.v,
                      width: 335.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl".tr,
                              style: CustomTextStyles.manropeYellow800,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(top: 109.v),
                              child: Text(
                                "lbl_off".tr.toUpperCase(),
                                style: CustomTextStyles.titleSmallGray50,
                              ),
                            ),
                          ),
                          CustomAppBar(
                            height: 99.v,
                            leadingWidth: 64.h,
                            leading: AppbarLeadingIconbutton(
                              imagePath: ImageConstant.imgGroup73,
                              margin: EdgeInsets.only(
                                left: 24.h,
                                bottom: 14.v,
                              ),
                            ),
                            title: AppbarSubtitle(
                              text: "msg_shopping_cart_5".tr,
                              margin: EdgeInsets.only(left: 25.h),
                            ),
                            actions: [
                              AppbarTrailingImage(
                                imagePath: ImageConstant.imgVector368,
                                margin: EdgeInsets.only(
                                  left: 28.h,
                                  top: 4.v,
                                  right: 40.h,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 31.h,
                        right: 31.h,
                        bottom: 16.v,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "lbl_25".tr,
                              style: CustomTextStyles.manropeGray50,
                            ),
                          ),
                          SizedBox(height: 3.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_use_code".tr,
                                  style: CustomTextStyles.bodyLargePoppins,
                                ),
                                TextSpan(
                                  text: "lbl_halalfood".tr,
                                  style: CustomTextStyles
                                      .titleMediumPoppinsGray90001,
                                ),
                                TextSpan(
                                  text: "lbl_at_checkouut".tr,
                                  style: CustomTextStyles.bodyLargePoppins,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 12.h,
      ),
      child: BlocSelector<ShoppingCartOfferBloc, ShoppingCartOfferState,
          ShoppingCartOfferModel?>(
        selector: (state) => state.shoppingCartOfferModelObj,
        builder: (context, shoppingCartOfferModelObj) {
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
            itemCount:
                shoppingCartOfferModelObj?.userprofilelistItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model =
                  shoppingCartOfferModelObj?.userprofilelistItemList[index] ??
                      UserprofilelistItemModel();
              return UserprofilelistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTextRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_3_more".tr,
            style: CustomTextStyles.labelLargePrimary,
          ),
          Text(
            "lbl_edit".tr,
            style: CustomTextStyles.labelLargePrimary,
          ),
        ],
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
            child: _buildNinetyOne(
              context,
              deliveryText: "lbl_subtotal".tr,
              priceText: "lbl_35_96".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildNinetyOne(
              context,
              deliveryText: "lbl_delivery".tr,
              priceText: "lbl_2_00".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildNinetyOne(
              context,
              deliveryText: "lbl_total".tr,
              priceText: "lbl_38_98".tr,
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
  Widget _buildNinetyOne(
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
