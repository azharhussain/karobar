import 'bloc/products_tab_container_bloc.dart';
import 'models/products_tab_container_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/products_page/products_page.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductsTabContainerScreen extends StatefulWidget {
  const ProductsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProductsTabContainerScreenState createState() =>
      ProductsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProductsTabContainerBloc>(
      create: (context) => ProductsTabContainerBloc(ProductsTabContainerState(
        productsTabContainerModelObj: ProductsTabContainerModel(),
      ))
        ..add(ProductsTabContainerInitialEvent()),
      child: ProductsTabContainerScreen(),
    );
  }
}

class ProductsTabContainerScreenState extends State<ProductsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsTabContainerBloc, ProductsTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 14.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 664.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        ProductsPage(),
                        ProductsPage(),
                        ProductsPage(),
                        ProductsPage(),
                      ],
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
        text: "msg_big_small_fishes".tr,
        margin: EdgeInsets.only(left: 25.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgQrcode,
          margin: EdgeInsets.only(
            left: 7.h,
            top: 19.v,
            right: 19.h,
          ),
        ),
        Container(
          height: 28.v,
          width: 28.98999.h,
          margin: EdgeInsets.only(
            left: 42.h,
            top: 9.v,
            right: 26.h,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBagGray90001,
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
                  decoration: AppDecoration.outlineGray.copyWith(
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
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
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
        unselectedLabelColor: appTheme.blueGray600,
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
              "lbl_popular".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_low_price".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_small_fishes".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_big".tr,
            ),
          ),
        ],
      ),
    );
  }
}
