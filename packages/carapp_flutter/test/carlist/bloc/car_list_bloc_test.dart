import 'package:carapp_flutter/carlist/bloc/car_list_bloc.dart';
import 'package:cars_api/cars_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCarsApi extends Mock implements CarsApi {}

void main() {
  group('CarListBloc', () {
    late CarsApi carsApi;

    setUp(() {
      carsApi = MockCarsApi();
    });

    test('initial state is CarListInitial', () {
      expect(CarListBloc(carsApi: carsApi).state, CarListInitial());
    });
  });
}
