import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'car_list_event.dart';

part 'car_list_state.dart';

class CarListBloc extends Bloc<CarListEvent, CarListState> {
  CarListBloc() : super(CarListInitial()) {
    on<CarListEvent>((event, emit) {});
  }
}
