// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:carapp_flutter/carlist/widgets/car_list_item.dart';
import 'package:cars_api/cars_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/helpers.dart';

void main() async {
  group('CarListItem', () {
    late Car car;

    setUp(() {
      car = Car();
    });

    testWidgets('renders CarListItem', (tester) async {
      await tester.pumpApp(
        CarListItem(
          const ValueKey<int>(0),
          car: car,
        ),
      );
      expect(find.byType(CarListItem), findsOneWidget);
    });
  });
}
