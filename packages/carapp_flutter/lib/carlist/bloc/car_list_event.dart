part of 'car_list_bloc.dart';

abstract class CarListEvent extends Equatable {
  const CarListEvent();

  @override
  List<Object?> get props => [];
}

class NewCarsData extends CarListEvent {
  const NewCarsData({
    required this.cars,
  });

  final List<Car> cars;

  @override
  List<Object?> get props => [
        cars,
      ];
}
