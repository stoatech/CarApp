import 'package:carapp_flutter/carlist/widgets/car_list_item.dart';
import 'package:cars_api/cars_api.dart';
import 'package:flutter/material.dart';

class CarList extends StatelessWidget {
  const CarList({
    super.key,
    required this.cars,
  });

  final List<Car> cars;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cars.length,
      itemBuilder: (BuildContext context, int index) {
        final car = cars[index];

        return Padding(
          padding: const EdgeInsets.all(8),
          child: CarListItem(
            ValueKey<int>(index),
            car: car,
          ),
        );
      },
    );
  }
}
