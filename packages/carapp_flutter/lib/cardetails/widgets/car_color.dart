import 'package:carapp_flutter/app/style/app_colors.dart';
import 'package:carapp_flutter/cardetails/bloc/car_details_bloc.dart';
import 'package:carapp_flutter/l10n/l10n.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarColor extends StatelessWidget {
  const CarColor({super.key});

  void _showColorPicker(
    BuildContext context,
    Color color,
  ) {
    showColorPickerDialog(
      context,
      color,
      pickersEnabled: {
        ColorPickerType.both: false,
        ColorPickerType.primary: true,
        ColorPickerType.accent: false,
        ColorPickerType.bw: false,
        ColorPickerType.custom: false,
        ColorPickerType.wheel: false,
      },
    ).then((newColor) {
      context.read<CarDetailsBloc>().add(ChangeColor(color: newColor));
    });
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
      buildWhen: (previous, current) => previous.color != current.color,
      builder: (context, state) {
        return Row(
          children: [
            Text(
              '${l10n.pickColor}:',
              style: textStyleBold,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();

                  _showColorPicker(
                    context,
                    state.color,
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.accent),
                        borderRadius: BorderRadius.circular(8),
                        color: state.color,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AppColors.white,
                      ),
                      child: Text(
                        l10n.tapHere,
                        style: TextStyle(
                          color: AppColors.darkGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
