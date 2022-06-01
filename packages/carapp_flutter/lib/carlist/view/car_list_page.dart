// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:carapp_flutter/carlist/bloc/car_list_bloc.dart';
import 'package:carapp_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CarListBloc(),
      child: const CarListView(),
    );
  }
}

class CarListView extends StatelessWidget {
  const CarListView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: const Center(child: CarListText()),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class CarListText extends StatelessWidget {
  const CarListText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = context.select((CarListBloc bloc) => bloc.state);
    return Text('$state', style: theme.textTheme.headline1);
  }
}
