// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:carapp_flutter/carlist/bloc/car_list_bloc.dart';
import 'package:carapp_flutter/carlist/view/car_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockCarListBloc extends MockBloc<CarListEvent, CarListState>
    implements CarListBloc {}

void main() {
  group('CarListPage', () {
    testWidgets('renders CounterView', (tester) async {
      await tester.pumpApp(const CarListPage());
      expect(find.byType(CarListView), findsOneWidget);
    });
  });

  group('CarListView', () {
    late CarListBloc carListBloc;

    setUp(() {
      carListBloc = MockCarListBloc();
    });

    testWidgets('renders initial state', (tester) async {
      final state = CarListInitial();
      when(() => carListBloc.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: carListBloc,
          child: const CarListView(),
        ),
      );
      expect(find.text('$state'), findsOneWidget);
    });

    testWidgets('calls nothing when add button is tapped', (tester) async {
      final state = CarListInitial();
      when(() => carListBloc.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: carListBloc,
          child: const CarListView(),
        ),
      );
      await tester.tap(find.byIcon(Icons.add));

      expect(find.text('$state'), findsOneWidget);
    });
  });
}
