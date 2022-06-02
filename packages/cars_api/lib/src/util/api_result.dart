import 'package:cars_api/src/util/network_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';

/// Model class for API result
@freezed
class ApiResult<T> with _$ApiResult<T> {
  /// Success result with data
  const factory ApiResult.success({required T data}) = Success<T>;

  /// Failure result with exception
  const factory ApiResult.failure({required NetworkException error}) =
      Failure<T>;
}
