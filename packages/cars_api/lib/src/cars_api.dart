import 'package:cars_api/src/models/models.dart';

/// An API specification for fetching cars data.
abstract class CarsApi {
  /// Get cars data from API
  Stream<List<Car>> getCars();

  /// Send new car data to API
  Future<void> addCar({
    required Car car,
  });

  /// Edit car data in API
  Future<void> updateCar({
    required Car car,
  });
}
