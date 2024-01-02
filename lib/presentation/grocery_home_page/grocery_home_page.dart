import '../grocery_home_page/widgets/card1_item_widget.dart';
import '../grocery_home_page/widgets/card_item_widget.dart';
import 'bloc/grocery_home_bloc.dart';
import 'models/card1_item_model.dart';
import 'models/card_item_model.dart';
import 'models/grocery_home_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_title.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:aladdin_karobar_app/widgets/custom_drop_down.dart';
import 'package:aladdin_karobar_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class GroceryHomePage extends StatelessWidget {
  const GroceryHomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<GroceryHomeBloc>(
      create: (context) => GroceryHomeBloc(GroceryHomeState(
        groceryHomeModelObj: GroceryHomeModel(),
      ))
        ..add(GroceryHomeInitialEvent()),
      child: GroceryHomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              _buildTwenty(context),
              Container(
                padding: EdgeInsets.symmetric(vertical: 22.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5.v),
                    _buildCard(context),
                    SizedBox(height: 25.v),
                    _buildGroceryHome(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 36.v),
          CustomAppBar(
            height: 39.v,
            title: AppbarTitle(
              text: "lbl_hey_halal".tr,
              margin: EdgeInsets.only(left: 20.h),
            ),
            actions: [
              Container(
                height: 28.v,
                width: 28.98999.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  right: 7.h,
                  bottom: 11.v,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBag,
                      height: 18.v,
                      width: 16.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        top: 10.v,
                        right: 12.h,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          bottom: 4.v,
                        ),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          "lbl_3".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: BlocSelector<GroceryHomeBloc, GroceryHomeState,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_search_products".tr,
                );
              },
            ),
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_delivery_to".tr.toUpperCase(),
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_green_way_3000".tr,
                          style: CustomTextStyles.titleSmallPrimaryContainer,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDownBlueGray20001,
                          height: 3.v,
                          width: 6.h,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            top: 6.v,
                            bottom: 10.v,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_within".tr.toUpperCase(),
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    BlocSelector<GroceryHomeBloc, GroceryHomeState,
                        GroceryHomeModel?>(
                      selector: (state) => state.groceryHomeModelObj,
                      builder: (context, groceryHomeModelObj) {
                        return CustomDropDown(
                          width: 57.h,
                          hintText: "lbl_1_hour".tr,
                          items: groceryHomeModelObj?.dropdownItemList ?? [],
                          onChanged: (value) {
                            context
                                .read<GroceryHomeBloc>()
                                .add(ChangeDropDownEvent(value: value));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return SizedBox(
      height: 123.v,
      child: BlocSelector<GroceryHomeBloc, GroceryHomeState, GroceryHomeModel?>(
        selector: (state) => state.groceryHomeModelObj,
        builder: (context, groceryHomeModelObj) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 18.h,
              );
            },
            itemCount: groceryHomeModelObj?.cardItemList.length ?? 0,
            itemBuilder: (context, index) {
              CardItemModel model =
                  groceryHomeModelObj?.cardItemList[index] ?? CardItemModel();
              return CardItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGroceryHome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_recommended".tr,
            style: CustomTextStyles.headlineLargeGray90001,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 194.v,
            child: BlocSelector<GroceryHomeBloc, GroceryHomeState,
                GroceryHomeModel?>(
              selector: (state) => state.groceryHomeModelObj,
              builder: (context, groceryHomeModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 118.0.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.gray30001,
                        indent: 10.0.h,
                        endIndent: 10.0.h,
                      ),
                    );
                  },
                  itemCount: groceryHomeModelObj?.card1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Card1ItemModel model =
                        groceryHomeModelObj?.card1ItemList[index] ??
                            Card1ItemModel();
                    return Card1ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
