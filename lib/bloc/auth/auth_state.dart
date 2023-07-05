part of 'auth_bloc.dart';

class AuthState extends Equatable {
  final FormStatus formStatus;
  final AuthStatus authStatus;
  final String errorMessage;

  const AuthState({
    required this.formStatus,
    required this.authStatus,
    required this.errorMessage,
  });

  AuthState copyWith({
    FormStatus? formStatus,
    AuthStatus? authStatus,
    String? errorMessage,
  }) =>
      AuthState(
        formStatus: formStatus ?? this.formStatus,
        authStatus: authStatus ?? this.authStatus,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  @override
  List<Object?> get props => [formStatus, errorMessage, authStatus];
}
