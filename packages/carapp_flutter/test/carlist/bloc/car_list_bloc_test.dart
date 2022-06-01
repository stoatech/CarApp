import 'package:carapp_flutter/carlist/bloc/car_list_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CarListBloc', () {
    test('initial state is CarListInitial', () {
      expect(CarListBloc().state, CarListInitial());
    });
  });
}
