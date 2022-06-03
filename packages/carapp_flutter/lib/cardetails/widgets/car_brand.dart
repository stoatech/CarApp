import 'package:carapp_flutter/app/style/app_colors.dart';
import 'package:carapp_flutter/app/util/extensions.dart';
import 'package:carapp_flutter/cardetails/bloc/car_details_bloc.dart';
import 'package:carapp_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class CarBrand extends StatelessWidget {
  const CarBrand({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final hintStyle = TextStyle(
      color: AppColors.mediumGrey,
      fontSize: 16,
    );

    final l10n = context.l10n;

    return BlocBuilder<CarDetailsBloc, CarDetailsState>(
      buildWhen: (previous, current) => previous.brandForm != current.brandForm,
      builder: (context, state) {
        textController
          ..text = state.brandForm.value
          ..moveCursorToTheEnd();

        return TextField(
          key: const Key('addingCar_carBrandInput_textField'),
          controller: textController,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
          textInputAction: TextInputAction.next,
          onEditingComplete: () {
            FocusScope.of(context).nextFocus();
          },
          onChanged: (brand) =>
              context.read<CarDetailsBloc>().add(ChangeBrand(brand: brand)),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.white,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.accentColor),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.accentColor),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.accentColor,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: l10n.brand,
            alignLabelWithHint: true,
            hintStyle: hintStyle,
            errorText: state.brandForm.invalid ? l10n.cannotBeEmpty : null,
          ),
          style: TextStyle(
            color: AppColors.black,
            fontSize: 16,
          ),
        );
      },
    );
  }
}
