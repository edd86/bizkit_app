import 'package:bizkit_app/features/auth/presentation/presentation_page.dart';
import 'package:bizkit_app/presentation/pages/home/custom_navigation.dart';
import 'package:bizkit_app/presentation/pages/product/product_page.dart';
import 'package:bizkit_app/presentation/pages/sales/register_sale_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String homePage = '/';
  static String login = '/login';
  static String registerSale = '/regSale';
  static String productPage = 'prodPage';

  static final Map<String, WidgetBuilder> routes = {
    login: (context) => PresentationPage(),
    homePage: (context) => CustomNavigation(),
    registerSale: (context) => RegisterSalePage(),
    productPage: (context) => ProductPage(),
  };
}
