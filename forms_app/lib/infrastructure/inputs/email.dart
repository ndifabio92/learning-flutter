import 'package:formz/formz.dart';

// Define input validation errors
enum EmaildError { empty, format }

// Extend FormzInput and provide the input type and error type.
class Email extends FormzInput<String, EmaildError> {
  // Call super.pure to represent an unmodified form input.
  const Email.pure() : super.pure('');

  // Call super.dirty to represent a modified form input.
  const Email.dirty({String value = ''}) : super.dirty(value);

  static final RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  String? get errorMessage {
    if (isValid || isPure) return null;

    if (displayError == EmaildError.empty) return 'El campo es requerido';
    if (displayError == EmaildError.format) return 'No tiene formato de correo';

    return null;
  }

  // Override validator to handle validating a given input value.
  @override
  EmaildError? validator(String value) {
    if (value.isEmpty || value.trim().isEmpty) return EmaildError.empty;
    if (emailRegExp.hasMatch(value)) return EmaildError.format;

    return null;
  }
}
