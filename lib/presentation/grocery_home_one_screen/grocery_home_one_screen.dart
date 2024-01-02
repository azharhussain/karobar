import '../grocery_home_one_screen/widgets/cardgrid_item_widget.dart';
import 'bloc/grocery_home_one_bloc.dart';
import 'models/cardgrid_item_model.dart';
import 'models/grocery_home_one_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/grocery_home_page/grocery_home_page.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_title.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:aladdin_karobar_app/widgets/custom_bottom_bar.dart';
import 'package:aladdin_karobar_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class GroceryHomeOneScreen extends StatelessWidget {
  GroceryHomeOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<GroceryHomeOneBloc>(
      create: (context) => GroceryHomeOneBloc(GroceryHomeOneState(
        groceryHomeOneModelObj: GroceryHomeOneModel(),
      ))
        ..add(GroceryHomeOneInitialEvent()),
      child: GroceryHomeOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildDeliveryTo(context),
              SizedBox(height: 13.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Column(
                      children: [
                        _buildViewRow(context),
                        SizedBox(height: 20.v),
                        _buildCardGrid(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildDeliveryTo(BuildContext context) {
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
            child: BlocSelector<GroceryHomeOneBloc, GroceryHomeOneState,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_1_hour".tr,
                          style: CustomTextStyles.titleSmallPrimaryContainer,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDownBlueGray20001,
                          height: 3.v,
                          width: 6.h,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            top: 7.v,
                            bottom: 8.v,
                          ),
                        ),
                      ],
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
  Widget _buildViewRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 199.v,
          width: 348.h,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 163.adaptSize,
                  width: 163.adaptSize,
                  margin: EdgeInsets.only(
                    left: 84.h,
                    top: 12.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.yellow700,
                    borderRadius: BorderRadius.circular(
                      81.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 132.adaptSize,
                  width: 132.adaptSize,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      66.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text(
                    "msg_deals_on_fruits".tr,
                    style: CustomTextStyles.titleLargeGray90001Bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 13.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 132.v,
                        width: 173.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 22.adaptSize,
                                width: 22.adaptSize,
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(
                                    11.h,
                                  ),
                                ),
                              ),
                            ),
                            _buildBannerCard(
                              context,
                              hours: "lbl_346_usd".tr,
                              timeSaved: "msg_your_total_savings".tr,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          bottom: 9.v,
                        ),
                        child: _buildBannerCard(
                          context,
                          hours: "lbl_215_hrs".tr,
                          timeSaved: "lbl_your_time_saved".tr,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgEllipse1549,
          height: 22.v,
          width: 19.h,
          margin: EdgeInsets.only(
            left: 1.h,
            top: 69.v,
            bottom: 107.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCardGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 9.h,
      ),
      child: BlocSelector<GroceryHomeOneBloc, GroceryHomeOneState,
          GroceryHomeOneModel?>(
        selector: (state) => state.groceryHomeOneModelObj,
        builder: (context, groceryHomeOneModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 195.v,
              crossAxisCount: 2,
              mainAxisSpacing: 12.h,
              crossAxisSpacing: 12.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: groceryHomeOneModelObj?.cardgridItemList.length ?? 0,
            itemBuilder: (context, index) {
              CardgridItemModel model =
                  groceryHomeOneModelObj?.cardgridItemList[index] ??
                      CardgridItemModel();
              return CardgridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildBannerCard(
    BuildContext context, {
    required String hours,
    required String timeSaved,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 30.v,
      ),
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_215".tr,
                  style: theme.textTheme.headlineMedium,
                ),
                TextSpan(
                  text: "lbl_hrs".tr,
                  style: CustomTextStyles.headlineMediumRegular,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 2.v),
          Text(
            timeSaved,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray90001,
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Categories:
        return AppRoutes.groceryHomePage;
      case BottomBarEnum.Favourite:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.groceryHomePage:
        return GroceryHomePage();
      default:
        return DefaultWidget();
    }
  }
}
