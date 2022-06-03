// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:carapp_flutter/carlist/bloc/car_list_bloc.dart';
import 'package:carapp_flutter/carlist/widgets/car_list.dart';
import 'package:carapp_flutter/l10n/l10n.dart';
import 'package:cars_api_firestore/cars_api_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CarListBloc(carsApi: CarsApiFirestore(collection: 'cars')),
      child: const CarListView(),
    );
  }
}

const deepCollectionEquality = DeepCollectionEquality();

class CarListView extends StatelessWidget {
  const CarListView({super.key});

  void _goToCarDetailsPage(BuildContext context) {
    context.go('/car-details');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.carListAppBarTitle)),
      body: BlocBuilder<CarListBloc, CarListState>(
        buildWhen: (previous, current) =>
            !deepCollectionEquality.equals(previous.cars, current.cars),
        builder: (context, state) {
          return CarList(
            cars: state.cars,
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _goToCarDetailsPage(context),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
