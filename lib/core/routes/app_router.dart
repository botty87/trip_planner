import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart'; // this is the file that is generated by the router generation process

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(page: HomeRoute.page, initial: true),
        CustomRoute(
          page: LoginSignupRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        AutoRoute(page: TripsRoute.page),
        AutoRoute(page: NewTripRoute.page),
      ];
}
