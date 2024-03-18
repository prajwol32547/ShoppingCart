import 'package:auto_route/auto_route.dart';

import '../Routes/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    router.push(Login(onResult: (result) {
      if (result) {
        resolver.next(true);
        router.removeLast();
      }
    }));
  }
}
