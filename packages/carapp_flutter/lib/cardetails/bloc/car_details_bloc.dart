import 'package:bloc/bloc.dart';
import 'package:carapp_flutter/app/style/app_colors.dart';
import 'package:carapp_flutter/app/util/color.dart';
import 'package:carapp_flutter/cardetails/models/models.dart';
import 'package:cars_api/cars_api.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_details_bloc.freezed.dart';

part 'car_details_event.dart';

part 'car_details_state.dart';

class CarDetailsBloc extends Bloc<CarDetailsEvent, CarDetailsState> {
  CarDetailsBloc({
    required CarsApi carsApi,
    required Car? car,
  })  : _carsApi = carsApi,
        super(
          CarDetailsState(
            car: car,
            brandForm: car != null
                ? BrandForm.dirty(car.brand ?? '')
                : const BrandForm.pure(),
            modelForm: car != null
                ? ModelForm.dirty(car.model ?? '')
                : const ModelForm.pure(),
            year: car != null ? DateTime.now() : null,
            color: car != null
                ? getColorFromHex(car.color ?? '')
                : AppColors.whiteColor,
          ),
        ) {
    on<ChangeBrand>(_changeBrand);

    on<ChangeModel>(_changeModel);

    on<ChangeYear>(_changeYear);

    on<ChangeColor>(_changeColor);

    on<SaveCarData>(_saveCarData);
  }

  final CarsApi _carsApi;

  void _changeBrand(
    ChangeBrand event,
    Emitter<CarDetailsState> emit,
  ) {
    final brandForm = BrandForm.dirty(event.brand);

    emit(
      state.copyWith(
        formzStatus: Formz.validate([
          brandForm,
          state.modelForm,
        ]),
        brandForm: brandForm,
      ),
    );
  }

  void _changeModel(
    ChangeModel event,
    Emitter<CarDetailsState> emit,
  ) {
    final modelForm = ModelForm.dirty(event.model);

    emit(
      state.copyWith(
        formzStatus: Formz.validate([
          state.brandForm,
          modelForm,
        ]),
        modelForm: modelForm,
      ),
    );
  }

  void _changeYear(
    ChangeYear event,
    Emitter<CarDetailsState> emit,
  ) {
    emit(
      state.copyWith(
        year: event.year,
      ),
    );
  }

  void _changeColor(
    ChangeColor event,
    Emitter<CarDetailsState> emit,
  ) {
    emit(
      state.copyWith(
        color: event.color,
      ),
    );
  }

  Future<void> _saveCarData(
    SaveCarData event,
    Emitter<CarDetailsState> emit,
  ) async {
    emit(
      state.copyWith(
        formzStatus: FormzStatus.submissionInProgress,
      ),
    );

    final oldCar = state.car;

    final brand = state.brandForm.value;
    final model = state.modelForm.value;
    final hexColor = state.color.toHex(
      withAlpha: false,
    );
    final year = state.year?.toUtc().toIso8601String();

    if (oldCar != null) {
      await _carsApi.updateCar(
        car: oldCar.copyWith(
          brand: brand,
          model: model,
          color: hexColor,
          year: year,
        ),
      );
    } else {
      final newCar = Car(
        brand: brand,
        model: model,
        color: hexColor,
        year: year,
      );

      await _carsApi.addCar(
        car: newCar,
      );
    }

    emit(
      state.copyWith(
        formzStatus: FormzStatus.submissionSuccess,
      ),
    );
  }
}
