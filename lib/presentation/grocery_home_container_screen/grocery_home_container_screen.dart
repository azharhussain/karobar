import 'bloc/grocery_home_container_bloc.dart';
import 'models/grocery_home_container_model.dart';
import 'package:aladdin_karobar_app/core/app_export.dart';
import 'package:aladdin_karobar_app/presentation/grocery_home_page/grocery_home_page.dart';
import 'package:aladdin_karobar_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class GroceryHomeContainerScreen extends StatelessWidget {
  GroceryHomeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<GroceryHomeContainerBloc>(
        create: (context) => GroceryHomeContainerBloc(GroceryHomeContainerState(
            groceryHomeContainerModelObj: GroceryHomeContainerModel()))
          ..add(GroceryHomeContainerInitialEvent()),
        child: GroceryHomeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroceryHomeContainerBloc, GroceryHomeContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.groceryHomePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
