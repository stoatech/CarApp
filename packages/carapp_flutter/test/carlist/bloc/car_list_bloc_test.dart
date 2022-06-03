import 'package:bloc_test/bloc_test.dart';
import 'package:carapp_flutter/carlist/bloc/car_list_bloc.dart';
import 'package:cars_api/cars_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCarsApi extends Mock implements CarsApi {
  @override
  Stream<List<Car>> getCars() async* {
    yield <Car>[];
  }
}

void main() {
  group('CarListBloc', () {
    late CarsApi carsApi;
    late CarListBloc carListBloc;

    setUp(() {
      carsApi = MockCarsApi();
      carListBloc = CarListBloc(carsApi: carsApi);
    });

    test('initial state has empty car list', () {
      expect(carListBloc.state.cars, const <Car>[]);
    });

    blocTest<CarListBloc, CarListState>(
      'emits state with one Car in a list when NewCarsData is added',
      build: () => carListBloc,
      act: (bloc) => bloc.add(NewCarsData(cars: [Car()])),
      expect: () => [
        CarListState(),
        CarListState(cars: [Car()])
      ],
    );
  });
}
