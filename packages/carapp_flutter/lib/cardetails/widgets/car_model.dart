import 'package:carapp_flutter/app/style/app_colors.dart';
import 'package:carapp_flutter/app/util/extensions.dart';
import 'package:carapp_flutter/cardetails/bloc/car_details_bloc.dart';
import 'package:carapp_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class CarModel extends StatelessWidget {
  const CarModel({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final hintStyle = TextStyle(
      color: AppColors.mediumGrey,
      fontSize: 16,
    );

    final l10n = context.l10n;

    return BlocBuilder<CarDetailsBloc, CarDetailsState>(
      buildWhen: (previous, current) => previous.modelForm != current.modelForm,
      builder: (context, state) {
        textController
          ..text = state.modelForm.value
          ..moveCursorToTheEnd();

        return TextField(
          key: const Key('addingCar_carModelInput_textField'),
          controller: textController,
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
          textInputAction: TextInputAction.next,
          onEditingComplete: () {
            FocusScope.of(context).nextFocus();
          },
          onChanged: (model) =>
              context.read<CarDetailsBloc>().add(ChangeModel(model: model)),
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
            hintText: l10n.model,
            alignLabelWithHint: true,
            hintStyle: hintStyle,
            errorText: state.modelForm.invalid ? l10n.cannotBeEmpty : null,
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
