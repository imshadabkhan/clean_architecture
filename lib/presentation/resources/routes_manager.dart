import 'package:clean_architecture/presentation/forgot_password/forgot_password.dart';
import 'package:clean_architecture/presentation/login/login.dart';
import 'package:clean_architecture/presentation/main/mainview.dart';
import 'package:clean_architecture/presentation/register/register.dart';
import 'package:clean_architecture/presentation/resources/string_manager.dart';
import 'package:clean_architecture/presentation/splash/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../onboarding/onboarding.dart';
import '../store_details/store_details.dart';

class RoutesManager {
  static const String splashRoutes = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotpassword";
  static const String mainRoute = "/main";
  static const String storeDetailRoute = "/storeDetails";
}

//As this is a function we define for routing between the screen switch condition is used here

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSetting) {
    switch (routeSetting.name) {
      case RoutesManager.splashRoutes:
        return MaterialPageRoute(builder: (_) => SplashView());
      case RoutesManager.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case RoutesManager.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RoutesManager.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case RoutesManager.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case RoutesManager.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case RoutesManager.storeDetailRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailView());
      default:
        return unDefinedRoute();
    }
  }
}

//if the route is undefined it will called
Route<dynamic> unDefinedRoute() {
  return MaterialPageRoute(
      builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text(AppString.noRoutesFound),
            ),
            body: Center(
              child: Text(AppString.noRoutesFound),
            ),
          ));
}
