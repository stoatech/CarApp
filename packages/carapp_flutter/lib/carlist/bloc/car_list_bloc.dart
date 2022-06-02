import 'package:bloc/bloc.dart';
import 'package:cars_api/cars_api.dart';
import 'package:equatable/equatable.dart';

part 'car_list_event.dart';

part 'car_list_state.dart';

class CarListBloc extends Bloc<CarListEvent, CarListState> {
  CarListBloc({
    required CarsApi carsApi,
  })  : _carsApi = carsApi,
        super(CarListInitial()) {
    on<GetCars>(_getCars);
  }

  final CarsApi _carsApi;

  void _getCars(
    GetCars event,
    Emitter<CarListState> emit,
  ) {
    _carsApi.getCars().listen((cars) {});
  }
}
