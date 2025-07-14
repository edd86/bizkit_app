import 'package:bizkit_app/pages/home/custom_navigation.dart';
import 'package:bizkit_app/pages/product/product_page.dart';
import 'package:bizkit_app/pages/sales/register_sale_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String homePage = '/';
  static String login = '/login';
  static String registerSale = '/regSale';
  static String productPage = 'prodPage';

  static final Map<String, WidgetBuilder> routes = {
    homePage: (context) => CustomNavigation(),
    registerSale: (context) => RegisterSalePage(),
    productPage: (context) => ProductPage(),
  };
}
