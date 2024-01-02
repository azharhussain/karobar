import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Text System".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.textSystemScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Onboarding V.One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onboardingVOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Grocery Home - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.groceryHomeContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Grocery Home One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.groceryHomeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Categories".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.categoriesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Categories One - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.categoriesOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Products - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Product details One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productDetailsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Product details Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productDetailsTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Product details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.productDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Shopping Cart _Offer".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.shoppingCartOfferScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Shopping Cart One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.shoppingCartOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Checkout".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.checkoutScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add New Card".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addNewCardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Orders One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.ordersOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Orders - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.ordersTabContainerScreen),
                            ),
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
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
