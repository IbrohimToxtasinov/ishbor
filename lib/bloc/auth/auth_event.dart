part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class ClientRegister extends AuthEvent {
  final String fullName;
  final String img;
  final String phoneNumber;
  final String password;

  const ClientRegister({
    required this.fullName,
    required this.img,
    required this.password,
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [phoneNumber, password, img, fullName];
}

class ClientLogin extends AuthEvent {
  final String phoneNumber;
  final String password;

  const ClientLogin({required this.password, required this.phoneNumber});

  @override
  List<Object?> get props => [phoneNumber, password];
}

class ClientLogout extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class CheckAuth extends AuthEvent {
  @override
  List<Object?> get props => [];
}
