import 'bloc/categories_one_tab_container_bloc.dart';
import 'models/categories_one_tab_container_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/categories_one_page/categories_one_page.dart';
import 'package:aladdin_karobar_app/presentation/grocery_home_page/grocery_home_page.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_title.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:aladdin_karobar_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CategoriesOneTabContainerScreen extends StatefulWidget {
  const CategoriesOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CategoriesOneTabContainerScreenState createState() =>
      CategoriesOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CategoriesOneTabContainerBloc>(
      create: (context) =>
          CategoriesOneTabContainerBloc(CategoriesOneTabContainerState(
        categoriesOneTabContainerModelObj: CategoriesOneTabContainerModel(),
      ))
            ..add(CategoriesOneTabContainerInitialEvent()),
      child: CategoriesOneTabContainerScreen(),
    );
  }
}

class CategoriesOneTabContainerScreenState
    extends State<CategoriesOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesOneTabContainerBloc,
        CategoriesOneTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildSeven(context),
                  SizedBox(height: 20.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildTabview(context),
                          _buildCategoriesOne(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 17.v),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 26.v),
          CustomAppBar(
            height: 39.v,
            title: AppbarTitle(
              text: "lbl_hey_halal".tr,
              margin: EdgeInsets.only(left: 20.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgContrast,
                margin: EdgeInsets.only(
                  left: 7.h,
                  top: 10.v,
                  right: 11.h,
                ),
              ),
              Container(
                height: 28.v,
                width: 28.98999.h,
                margin: EdgeInsets.only(
                  left: 41.h,
                  right: 18.h,
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
          SizedBox(height: 11.v),
          Container(
            width: 299.h,
            margin: EdgeInsets.only(
              left: 20.h,
              right: 56.h,
            ),
            child: Text(
              "msg_shop_by_category".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displayMedium!.copyWith(
                height: 1.25,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 36.v,
      width: 351.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.gray50,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray90001,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: appTheme.yellow800,
          borderRadius: BorderRadius.circular(
            18.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_meats_fishes".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_vegetables".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_fruits".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_fruits".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategoriesOne(BuildContext context) {
    return SizedBox(
      height: 401.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          CategoriesOnePage(),
          CategoriesOnePage(),
          CategoriesOnePage(),
          CategoriesOnePage(),
        ],
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
