import 'package:carapp_flutter/cardetails/view/car_details_page.dart';
import 'package:carapp_flutter/carlist/view/car_list_page.dart';
import 'package:cars_api/cars_api.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends GoRouter {
  AppRouter._() : super(routes: routes);

  static final instance = AppRouter._();

  static List<GoRoute> routes = [
    GoRoute(
      name: 'car-list-page',
      path: '/',
      builder: (context, state) => const CarListPage(),
      routes: [
        GoRoute(
          name: 'car-details-page',
          path: 'car-details',
          builder: (context, state) {
            final car = state.extra as Car?;

            return CarDetailsPage(car: car);
          },
        ),
      ],
    ),
  ];
}
