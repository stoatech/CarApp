import 'package:formz/formz.dart';

enum ModelFormValidationError { empty, invalid }

class ModelForm extends FormzInput<String, ModelFormValidationError> {
  const ModelForm.pure() : super.pure('');

  const ModelForm.dirty([super.value = '']) : super.dirty();

  @override
  ModelFormValidationError? validator(String value) {
    if (value.isEmpty) {
      return ModelFormValidationError.empty;
    }
    return null;
  }
}
