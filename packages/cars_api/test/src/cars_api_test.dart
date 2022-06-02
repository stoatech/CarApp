// ignore_for_file: prefer_const_constructors
import 'package:cars_api/cars_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockCarsApi extends Mock implements CarsApi {}

void main() {
  group('CarsApi', () {
    late CarsApi carsApi;

    setUp(() {
      carsApi = MockCarsApi();
    });

    test('can be instantiated', () {
      expect(carsApi, isNotNull);
    });
  });
}
