import '../orders_page/widgets/userprofile_item_widget.dart';
import 'bloc/orders_bloc.dart';
import 'models/orders_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  OrdersPageState createState() => OrdersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OrdersBloc>(
      create: (context) => OrdersBloc(OrdersState(
        ordersModelObj: OrdersModel(),
      ))
        ..add(OrdersInitialEvent()),
      child: OrdersPage(),
    );
  }
}

class OrdersPageState extends State<OrdersPage>
    with AutomaticKeepAliveClientMixin<OrdersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 60.v),
              _buildUserProfile(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<OrdersBloc, OrdersState, OrdersModel?>(
        selector: (state) => state.ordersModelObj,
        builder: (context, ordersModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0.v),
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
            itemCount: ordersModelObj?.userprofileItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofileItemModel model =
                  ordersModelObj?.userprofileItemList[index] ??
                      UserprofileItemModel();
              return UserprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
