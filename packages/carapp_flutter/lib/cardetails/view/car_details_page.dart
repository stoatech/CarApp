import 'package:carapp_flutter/app/style/app_colors.dart';
import 'package:carapp_flutter/cardetails/bloc/car_details_bloc.dart';
import 'package:carapp_flutter/cardetails/widgets/widgets.dart';
import 'package:carapp_flutter/l10n/l10n.dart';
import 'package:cars_api/cars_api.dart';
import 'package:cars_api_firestore/cars_api_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

@immutable
class CarDetailsPage extends StatelessWidget {
  const CarDetailsPage({
    super.key,
    this.car,
  });

  final Car? car;

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CarDetailsBloc(
        carsApi: CarsApiFirestore(
          collection: 'cars',
        ),
        car: car,
      ),
      child: MultiBlocListener(
        listeners: [
          BlocListener<CarDetailsBloc, CarDetailsState>(
            listenWhen: (previous, current) =>
                previous.formzStatus != current.formzStatus,
            listener: (context, state) {
              if (state.formzStatus == FormzStatus.submissionSuccess) {
                if (car != null) {
                  _showSnackbar(
                    context,
                    context.l10n.carUpdated,
                  );
                } else {
                  _showSnackbar(
                    context,
                    context.l10n.carAdded,
                  );

                  context.pop();
                }
              }
            },
          ),
        ],
        child: const CarDetailsView(),
      ),
    );
  }
}

const deepCollectionEquality = DeepCollectionEquality();

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.carDetailsAppBarTitle)),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<CarDetailsBloc, CarDetailsState>(
            buildWhen: (previous, current) =>
                previous.formzStatus != current.formzStatus,
            builder: (context, state) {
              final isLoading = state.formzStatus.isSubmissionInProgress;

              if (isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.accentColor,
                  ),
                );
              }

              return ListView(
                children: const [
                  SizedBox(height: 32),
                  CarBrand(),
                  SizedBox(height: 32),
                  CarModel(),
                  SizedBox(height: 32),
                  CarYear(),
                  SizedBox(height: 32),
                  CarColor(),
                  SizedBox(height: 32),
                ],
              );
            },
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () =>
                  context.read<CarDetailsBloc>().add(SaveCarData()),
              child: const Icon(Icons.save_alt),
            ),
          ],
        ),
      ),
    );
  }
}
