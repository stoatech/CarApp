// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:carapp_flutter/carlist/bloc/car_list_bloc.dart';
import 'package:carapp_flutter/carlist/widgets/car_list.dart';
import 'package:carapp_flutter/carlist/widgets/car_list_item.dart';
import 'package:cars_api/cars_api.dart';
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
  group('CarList', () {
    testWidgets('renders CarList', (tester) async {
      await tester.pumpApp(
        const CarList(
          cars: <Car>[],
        ),
      );
      expect(find.byType(CarList), findsOneWidget);
    });

    testWidgets('renders CarList with one item', (tester) async {
      final car = Car();

      await tester.pumpApp(
        CarList(
          cars: <Car>[
            car,
          ],
        ),
      );
      expect(find.byType(CarList), findsOneWidget);
      expect(find.byType(CarListItem), findsOneWidget);
    });
  });
}
