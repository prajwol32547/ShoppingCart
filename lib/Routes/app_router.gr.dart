// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:practiceflutter/cart/Presentation/Screen/Cart.dart' as _i1;
import 'package:practiceflutter/cart/Presentation/Screen/CheckoutScreen.dart' as _i2;
import 'package:practiceflutter/home/Presentation/screen/Home.dart' as _i4;
import 'package:practiceflutter/home/Presentation/screen/Home_tab.dart' as _i6;
import 'package:practiceflutter/home/Presentation/screen/HomeProductView.dart' as _i5;
import 'package:practiceflutter/Routes/BottomNavigation.dart' as _i3;
import 'package:practiceflutter/Screen/LoginRoute.dart' as _i7;
import 'package:practiceflutter/Screen/Profile.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    Cart.name: (routeData) {
      final args = routeData.argsAs<CartArgs>(orElse: () => const CartArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.Cart(key: args.key),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CheckoutScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DashboardPage(),
      );
    },
    Home.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Home(),
      );
    },
    HomeProductDart.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeProductDart(),
      );
    },
    Home_tab.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Home_tab(),
      );
    },
    Login.name: (routeData) {
      final args = routeData.argsAs<LoginArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.Login(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    Profile.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Profile(),
      );
    },
  };
}

/// generated route for
/// [_i1.Cart]
class Cart extends _i9.PageRouteInfo<CartArgs> {
  Cart({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          Cart.name,
          args: CartArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Cart';

  static const _i9.PageInfo<CartArgs> page = _i9.PageInfo<CartArgs>(name);
}

class CartArgs {
  const CartArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'CartArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.CheckoutScreen]
class CheckoutRoute extends _i9.PageRouteInfo<void> {
  const CheckoutRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashboardPage]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Home]
class Home extends _i9.PageRouteInfo<void> {
  const Home({List<_i9.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeProductDart]
class HomeProductDart extends _i9.PageRouteInfo<void> {
  const HomeProductDart({List<_i9.PageRouteInfo>? children})
      : super(
          HomeProductDart.name,
          initialChildren: children,
        );

  static const String name = 'HomeProductDart';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Home_tab]
class Home_tab extends _i9.PageRouteInfo<void> {
  const Home_tab({List<_i9.PageRouteInfo>? children})
      : super(
          Home_tab.name,
          initialChildren: children,
        );

  static const String name = 'Home_tab';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Login]
class Login extends _i9.PageRouteInfo<LoginArgs> {
  Login({
    _i10.Key? key,
    required dynamic Function(bool) onResult,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          Login.name,
          args: LoginArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i9.PageInfo<LoginArgs> page = _i9.PageInfo<LoginArgs>(name);
}

class LoginArgs {
  const LoginArgs({
    this.key,
    required this.onResult,
  });

  final _i10.Key? key;

  final dynamic Function(bool) onResult;

  @override
  String toString() {
    return 'LoginArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i8.Profile]
class Profile extends _i9.PageRouteInfo<void> {
  const Profile({List<_i9.PageRouteInfo>? children})
      : super(
          Profile.name,
          initialChildren: children,
        );

  static const String name = 'Profile';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
