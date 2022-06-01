import 'package:carapp_flutter/carlist/view/car_list_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends GoRouter {
  AppRouter._() : super(routes: routes);

  static final instance = AppRouter._();

  static List<GoRoute> routes = [
    GoRoute(
      name: 'car-list-page',
      path: '/',
      builder: (context, state) => const CarListPage(),
    ),
  ];
}