part of 'register_cubit.dart';

enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {
  final UserName username;
  final Email email;
  final Password password;
  final FormStatus formStatus;
  final bool isValid;

  const RegisterFormState({
    this.formStatus = FormStatus.invalid,
    this.username = const UserName.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.isValid = false,
  });

  RegisterFormState copyWith({
    FormStatus? formStatus,
    UserName? username,
    Email? email,
    Password? password,
    bool? isValid,
  }) => RegisterFormState(
    formStatus: formStatus ?? this.formStatus,
    username: username ?? this.username,
    email: email ?? this.email,
    password: password ?? this.password,
    isValid: isValid ?? this.isValid,
  );

  @override
  List<Object> get props => [formStatus, username, email, password, isValid];
}
