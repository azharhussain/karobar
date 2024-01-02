import '../orders_one_screen/widgets/userprofilelist1_item_widget.dart';
import 'bloc/orders_one_bloc.dart';
import 'models/orders_one_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:aladdin_karobar_app/widgets/custom_elevated_button.dart';
import 'package:aladdin_karobar_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OrdersOneScreen extends StatelessWidget {
  const OrdersOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OrdersOneBloc>(
      create: (context) => OrdersOneBloc(OrdersOneState(
        ordersOneModelObj: OrdersOneModel(),
      ))
        ..add(OrdersOneInitialEvent()),
      child: OrdersOneScreen(),
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
            horizontal: 20.h,
            vertical: 33.v,
          ),
          child: Column(
            children: [
              _buildFreshOrangeRow(context),
              SizedBox(height: 10.v),
              _buildTrackOrderColumn(context),
              SizedBox(height: 26.v),
              Divider(
                color: appTheme.indigo50,
              ),
              SizedBox(height: 23.v),
              _buildUserProfileList(context),
            ],
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
        text: "lbl_orders".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFreshOrangeRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgImageIconBlueGray200,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 2.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_fresh_orange".tr,
                style: CustomTextStyles.bodyMediumBluegray600,
              ),
              Text(
                "lbl_7_90".tr,
                style: CustomTextStyles.titleSmallBlack900,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 17.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_id".tr,
                  style: CustomTextStyles.bodyMediumBluegray400,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_765433".tr,
                  style: CustomTextStyles.bodyMediumBlack900_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTrackOrderButton(BuildContext context) {
    return CustomElevatedButton(
      width: 115.h,
      text: "lbl_track_order".tr,
    );
  }

  /// Section Widget
  Widget _buildTrackOrderColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 128.v,
                width: 175.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgA201,
                      height: 123.v,
                      width: 175.h,
                      alignment: Alignment.topCenter,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 62.h),
                      child: CustomIconButton(
                        height: 39.adaptSize,
                        width: 39.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        decoration: IconButtonStyleHelper.outlineOnPrimary,
                        alignment: Alignment.bottomLeft,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImageIconBlueGray20039x39,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 140.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_your_oranges".tr,
                              style:
                                  CustomTextStyles.titleLargeGray90001Regular20,
                            ),
                            TextSpan(
                              text: "lbl_are_on_the_way".tr,
                              style: CustomTextStyles.titleLargeGray90001,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    _buildTrackOrderButton(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(left: 22.h),
          child: Text(
            "msg_meet_our_rider".tr,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return BlocSelector<OrdersOneBloc, OrdersOneState, OrdersOneModel?>(
      selector: (state) => state.ordersOneModelObj,
      builder: (context, ordersOneModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 13.0.v),
              child: SizedBox(
                width: 335.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.indigo50,
                ),
              ),
            );
          },
          itemCount: ordersOneModelObj?.userprofilelist1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofilelist1ItemModel model =
                ordersOneModelObj?.userprofilelist1ItemList[index] ??
                    Userprofilelist1ItemModel();
            return Userprofilelist1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
