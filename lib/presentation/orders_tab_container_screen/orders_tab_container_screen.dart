import 'bloc/orders_tab_container_bloc.dart';
import 'models/orders_tab_container_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/orders_page/orders_page.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:aladdin_karobar_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OrdersTabContainerScreen extends StatefulWidget {
  const OrdersTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OrdersTabContainerScreenState createState() =>
      OrdersTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OrdersTabContainerBloc>(
      create: (context) => OrdersTabContainerBloc(OrdersTabContainerState(
        ordersTabContainerModelObj: OrdersTabContainerModel(),
      ))
        ..add(OrdersTabContainerInitialEvent()),
      child: OrdersTabContainerScreen(),
    );
  }
}

class OrdersTabContainerScreenState extends State<OrdersTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersTabContainerBloc, OrdersTabContainerState>(
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
                    height: 668.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        OrdersPage(),
                        OrdersPage(),
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
        text: "lbl_orders".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 44.v,
      width: 331.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.blueGray600,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray50,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            22.h,
          ),
          border: Border.all(
            color: appTheme.blueGray20001,
            width: 1.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_current".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_past".tr,
            ),
          ),
        ],
      ),
    );
  }
}
