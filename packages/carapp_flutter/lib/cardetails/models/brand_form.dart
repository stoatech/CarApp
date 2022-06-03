import 'package:formz/formz.dart';

enum BrandFormValidationError { empty, invalid }

class BrandForm extends FormzInput<String, BrandFormValidationError> {
  const BrandForm.pure() : super.pure('');

  const BrandForm.dirty([super.value = '']) : super.dirty();

  @override
  BrandFormValidationError? validator(String value) {
    if (value.isEmpty) {
      return BrandFormValidationError.empty;
    }
    return null;
  }
}
