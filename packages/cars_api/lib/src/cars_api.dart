import 'package:cars_api/src/models/models.dart';
import 'package:cars_api/src/util/api_result.dart';

/// An API specification for fetching cars data.
abstract class CarsApi {
  /// Get cars data from API
  Stream<ApiResult<Car>> getCars();

  /// Send new car data to API
  Future<ApiResult<bool>> saveCar({
    required Car car,
  });

  /// Edit car data in API
  Future<ApiResult<bool>> editCar({
    required Car car,
  });
}
