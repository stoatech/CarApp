part of 'car_details_bloc.dart';

abstract class CarDetailsEvent {
  CarDetailsEvent();
}

@freezed
class ChangeBrand extends CarDetailsEvent with _$ChangeBrand {
  factory ChangeBrand({
    required String brand,
  }) = _ChangeBrand;
}

@freezed
class ChangeModel extends CarDetailsEvent with _$ChangeModel {
  factory ChangeModel({
    required String model,
  }) = _ChangeModel;
}

@freezed
class ChangeYear extends CarDetailsEvent with _$ChangeYear {
  factory ChangeYear({
    required DateTime year,
  }) = _ChangeYear;
}

@freezed
class ChangeColor extends CarDetailsEvent with _$ChangeColor {
  factory ChangeColor({
    required Color color,
  }) = _ChangeColor;
}

@freezed
class SaveCarData extends CarDetailsEvent with _$SaveCarData {
  factory SaveCarData() = _SaveCarData;
}
