import 'package:auto_route/auto_route.dart';
import 'package:practiceflutter/guard/auth_gard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: Cart.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            durationInMilliseconds: 30),
        CustomRoute(
            page: Login.page,
            children: [AutoRoute(page: CheckoutRoute.page)],
//TransitionsBuilders class contains a preset of common transitions builders.
            transitionsBuilder: TransitionsBuilders.slideBottom,
            durationInMilliseconds: 400),
        AutoRoute(page: Profile.page, guards: [AuthGuard()]),
        AutoRoute(page: DashboardRoute.page, initial: true, children: [
          AutoRoute(page: Home_tab.page, children: [
            AutoRoute(path: 'Home', page: Home.page, initial: true),
            AutoRoute(path: 'HomeProductDart', page: HomeProductDart.page),
          ]),
          AutoRoute(page: Cart.page, path: 'cart')
        ]),
      ];
}
