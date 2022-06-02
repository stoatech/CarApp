import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';

part 'car.g.dart';

/// Model class for car data returned from API
@freezed
class Car with _$Car {
  /// Factory constructor for Car model data
  factory Car({
    @JsonKey(name: 'id', nullable: true) @Default('') String? id,
    @JsonKey(name: 'brand', nullable: true) @Default('') String? brand,
    @JsonKey(name: 'model', nullable: true) @Default('') String? model,
    @JsonKey(name: 'color', nullable: true) @Default('') String? color,
    @JsonKey(name: 'year', nullable: true) @Default('') String? year,
    @JsonKey(name: 'ownerId', nullable: true) @Default('') String? ownerId,
  }) = _Car;

  /// Factory constructor for parsing JSON data to Car model class
  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
