import 'package:flutter/material.dart';
import 'package:aladdin_karobar_app/presentation/text_system_screen/text_system_screen.dart';
import 'package:aladdin_karobar_app/presentation/onboarding_v_one_screen/onboarding_v_one_screen.dart';
import 'package:aladdin_karobar_app/presentation/grocery_home_container_screen/grocery_home_container_screen.dart';
import 'package:aladdin_karobar_app/presentation/grocery_home_one_screen/grocery_home_one_screen.dart';
import 'package:aladdin_karobar_app/presentation/categories_screen/categories_screen.dart';
import 'package:aladdin_karobar_app/presentation/categories_one_tab_container_screen/categories_one_tab_container_screen.dart';
import 'package:aladdin_karobar_app/presentation/products_tab_container_screen/products_tab_container_screen.dart';
import 'package:aladdin_karobar_app/presentation/product_details_one_screen/product_details_one_screen.dart';
import 'package:aladdin_karobar_app/presentation/product_details_two_screen/product_details_two_screen.dart';
import 'package:aladdin_karobar_app/presentation/product_details_screen/product_details_screen.dart';
import 'package:aladdin_karobar_app/presentation/shopping_cart_offer_screen/shopping_cart_offer_screen.dart';
import 'package:aladdin_karobar_app/presentation/shopping_cart_one_screen/shopping_cart_one_screen.dart';
import 'package:aladdin_karobar_app/presentation/checkout_screen/checkout_screen.dart';
import 'package:aladdin_karobar_app/presentation/add_new_card_screen/add_new_card_screen.dart';
import 'package:aladdin_karobar_app/presentation/orders_one_screen/orders_one_screen.dart';
import 'package:aladdin_karobar_app/presentation/orders_tab_container_screen/orders_tab_container_screen.dart';
import 'package:aladdin_karobar_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String textSystemScreen = '/text_system_screen';

  static const String onboardingVOneScreen = '/onboarding_v_one_screen';

  static const String groceryHomePage = '/grocery_home_page';

  static const String groceryHomeContainerScreen =
      '/grocery_home_container_screen';

  static const String groceryHomeOneScreen = '/grocery_home_one_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String categoriesOnePage = '/categories_one_page';

  static const String categoriesOneTabContainerScreen =
      '/categories_one_tab_container_screen';

  static const String productsPage = '/products_page';

  static const String productsTabContainerScreen =
      '/products_tab_container_screen';

  static const String productDetailsOneScreen = '/product_details_one_screen';

  static const String productDetailsTwoScreen = '/product_details_two_screen';

  static const String productDetailsScreen = '/product_details_screen';

  static const String shoppingCartOfferScreen = '/shopping_cart_offer_screen';

  static const String shoppingCartOneScreen = '/shopping_cart_one_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String ordersOneScreen = '/orders_one_screen';

  static const String ordersPage = '/orders_page';

  static const String ordersTabContainerScreen = '/orders_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        textSystemScreen: TextSystemScreen.builder,
        onboardingVOneScreen: OnboardingVOneScreen.builder,
        groceryHomeContainerScreen: GroceryHomeContainerScreen.builder,
        groceryHomeOneScreen: GroceryHomeOneScreen.builder,
        categoriesScreen: CategoriesScreen.builder,
        categoriesOneTabContainerScreen:
            CategoriesOneTabContainerScreen.builder,
        productsTabContainerScreen: ProductsTabContainerScreen.builder,
        productDetailsOneScreen: ProductDetailsOneScreen.builder,
        productDetailsTwoScreen: ProductDetailsTwoScreen.builder,
        productDetailsScreen: ProductDetailsScreen.builder,
        shoppingCartOfferScreen: ShoppingCartOfferScreen.builder,
        shoppingCartOneScreen: ShoppingCartOneScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        addNewCardScreen: AddNewCardScreen.builder,
        ordersOneScreen: OrdersOneScreen.builder,
        ordersTabContainerScreen: OrdersTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingVOneScreen.builder
      };
}
