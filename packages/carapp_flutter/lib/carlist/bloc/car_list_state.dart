part of 'car_list_bloc.dart';

abstract class CarListState extends Equatable {
  const CarListState();
}

class CarListInitial extends CarListState {
  @override
  List<Object> get props => [];
}
