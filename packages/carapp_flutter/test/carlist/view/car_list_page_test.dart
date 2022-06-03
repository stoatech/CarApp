// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:carapp_flutter/carlist/bloc/car_list_bloc.dart';
import 'package:carapp_flutter/carlist/view/car_list_page.dart';
import 'package:cars_api/cars_api.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockCarsApi extends Mock implements CarsApi {}

class MockCarListBloc extends MockBloc<CarListEvent, CarListState>
    implements CarListBloc {
  MockCarListBloc({
    required this.carsApi,
  });

  final CarsApi carsApi;
}

void main() async {
  setupFirebaseAuthMocks();

  setUpAll(() async {
    await Firebase.initializeApp();
  });

  group('CarListPage', () {
    testWidgets('renders CarListView', (tester) async {
      await tester.pumpApp(const CarListPage());
      expect(find.byType(CarListView), findsOneWidget);
    });
  });

  group('CarListView', () {
    late CarsApi carsApi;
    late CarListBloc carListBloc;

    setUp(() {
      carsApi = MockCarsApi();
      carListBloc = MockCarListBloc(carsApi: carsApi);
    });

    testWidgets('renders initial state', (tester) async {
      final state = CarListState();
      when(() => carListBloc.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: carListBloc,
          child: const CarListView(),
        ),
      );
      expect(find.byType(CarListView), findsOneWidget);
    });
  });
}
