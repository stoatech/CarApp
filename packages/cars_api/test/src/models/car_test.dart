// ignore_for_file: prefer_const_constructors
import 'package:cars_api/cars_api.dart';
import 'package:test/test.dart';

void main() {
  group('Car', () {
    test('can be instantiated', () {
      final car = Car();
      expect(car, isNotNull);
    });

    test('can be instantiated by parsing JSON', () {
      final car = Car.fromJson(<String, dynamic>{
        'id': null,
        'brand': null,
        'model': null,
        'color': null,
        'year': null,
        'ownerId': null,
      });
      expect(car, isNotNull);
    });

    test('can be parsed to JSON', () {
      final car = Car();
      final jsonMap = {
        'id': '',
        'brand': '',
        'model': '',
        'color': '',
        'year': '',
        'ownerId': '',
      };
      expect(car.toJson(), jsonMap);
    });
  });
}
