part of 'car_list_bloc.dart';

@freezed
class CarListState with _$CarListState {
  factory CarListState({
    @Default(<Car>[]) List<Car> cars,
  }) = _CarListState;
}
