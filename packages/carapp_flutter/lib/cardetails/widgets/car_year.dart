import 'package:carapp_flutter/app/style/app_colors.dart' hide Material;
import 'package:carapp_flutter/cardetails/bloc/car_details_bloc.dart';
import 'package:carapp_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class CarYear extends StatelessWidget {
  const CarYear({super.key});

  void _showDatePicker(
    BuildContext context,
    DateTime? year,
  ) {
    final now = DateTime.now();

    showDialog<DateTime>(
      context: context,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Material(
            elevation: 8,
            borderRadius: BorderRadius.circular(4),
            child: YearPicker(
              selectedDate: year ?? DateTime(now.year),
              firstDate: DateTime(1900),
              lastDate: DateTime(now.year + 1),
              onChanged: (date) {
                context.read<CarDetailsBloc>().add(ChangeYear(year: date));

                Navigator.pop(context);
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyleBold = TextStyle(
      color: AppColors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    final l10n = context.l10n;

    return BlocBuilder<CarDetailsBloc, CarDetailsState>(
      buildWhen: (previous, current) => previous.year != current.year,
      builder: (context, state) {
        final yearText = state.year?.year.toString() ?? l10n.tapHere;

        return Row(
          children: [
            Text(
              '${l10n.chooseProductionYear}:',
              style: textStyleBold,
            ),
            const SizedBox(
              width: 16,
            ),
            GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();

                _showDatePicker(
                  context,
                  state.year,
                );
              },
              child: Container(
                height: 64,
                padding: const EdgeInsets.only(
                  left: 32,
                  right: 32,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.accent),
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                ),
                child: Center(
                  child: Text(
                    yearText,
                    style: TextStyle(
                      color: AppColors.darkGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
