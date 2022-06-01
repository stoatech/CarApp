import 'package:carapp_flutter/counter/counter.dart';
import 'package:go_router/go_router.dart';

class AppRouter extends GoRouter {
  AppRouter._() : super(routes: routes);

  static final instance = AppRouter._();

  static List<GoRoute> routes = [
    GoRoute(
      name: 'counter-page',
      path: '/',
      builder: (context, state) => const CounterPage(),
    ),
  ];
}
