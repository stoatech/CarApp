import 'package:bloc/bloc.dart';
import 'package:cars_api/cars_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_list_bloc.freezed.dart';

part 'car_list_event.dart';

part 'car_list_state.dart';

class CarListBloc extends Bloc<CarListEvent, CarListState> {
  CarListBloc({
    required CarsApi carsApi,
  })  : _carsApi = carsApi,
        super(CarListState()) {
    on<NewCarsData>(_newCarsData);

    _listenCars();
  }

  final CarsApi _carsApi;

  void _listenCars() {
    _carsApi.getCars().listen((cars) {
      add(
        NewCarsData(
          cars: cars,
        ),
      );
    });
  }

  void _newCarsData(
    NewCarsData event,
    Emitter<CarListState> emit,
  ) {
    emit(
      state.copyWith(
        cars: event.cars,
      ),
    );
  }
}
