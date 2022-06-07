part of 'car_list_bloc.dart';

abstract class CarListEvent {
  const CarListEvent();
}

@freezed
class NewCarsData extends CarListEvent with _$NewCarsData {
  factory NewCarsData({
    required List<Car> cars,
  }) = _NewCarsData;
}
