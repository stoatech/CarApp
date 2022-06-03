part of 'car_details_bloc.dart';

@freezed
class CarDetailsState with _$CarDetailsState {
  factory CarDetailsState({
    @Default(null) Car? car,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
    @Default(BrandForm.pure()) BrandForm brandForm,
    @Default(ModelForm.pure()) ModelForm modelForm,
    @Default(null) DateTime? year,
    @Default(AppColors.whiteColor) Color color,
  }) = _CarDetailsState;
}
