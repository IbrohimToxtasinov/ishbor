import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ishbor/data/models/form/form_status_model.dart';

part 'auth_event.dart';
//
part 'auth_state.dart';
//
// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   AuthBloc({required this.authRepository})
//       : super(
//           const AuthState(
//             formStatus: FormStatus.pure,
//             authStatus: AuthStatus.pure,
//             errorMessage: "",
//           ),
//         ) {
//     on<ClientLogin>(_loginClient);
//     on<ClientRegister>(_registerClient);
//     on<ClientLogout>(_logOutClient);
//     on<CheckAuth>(_checkAuth);
//     // add(CheckAuth());
//   }
//
//   final AuthRepository authRepository;
//
//   _loginClient(ClientLogin event, Emitter<AuthState> emit) async {
//     emit(state.copyWith(formStatus: FormStatus.loginClientInProgress));
//     MyResponse myResponse = await authRepository.clientLogin(
//         phoneNumber: event.phoneNumber, password: event.password);
//     if (myResponse.errorMessage.isEmpty) {
//       emit(
//         state.copyWith(
//           formStatus: FormStatus.loginClientInSuccess,
//           authStatus: AuthStatus.authenticated,
//         ),
//       );
//       await StorageRepository.putString("phoneNumber", event.phoneNumber);
//       await StorageRepository.putString("password", event.password);
//     } else {
//       emit(
//         state.copyWith(
//           formStatus: FormStatus.loginClientInFailure,
//           errorMessage: myResponse.errorMessage,
//           authStatus: AuthStatus.unauthenticated,
//         ),
//       );
//     }
//   }
//
//   _registerClient(ClientRegister event, Emitter<AuthState> emit) async {
//     emit(state.copyWith(formStatus: FormStatus.registerClientInProgress));
//     MyResponse myResponse = await authRepository.clientRegister(
//       fullName: event.fullName,
//       img: event.img,
//       phoneNumber: event.phoneNumber,
//       password: event.password,
//     );
//     if (myResponse.errorMessage.isEmpty) {
//       emit(
//         state.copyWith(
//           formStatus: FormStatus.registerClientInSuccess,
//           authStatus: AuthStatus.registered,
//         ),
//       );
//     } else {
//       emit(
//         state.copyWith(
//           formStatus: FormStatus.registerClientInFailure,
//           errorMessage: myResponse.errorMessage,
//           authStatus: AuthStatus.unauthenticated,
//         ),
//       );
//     }
//   }
//
//   _logOutClient(ClientLogout event, Emitter<AuthState> emit) async {
//     await authRepository.deleteAllAddresses();
//     authRepository.logOut();
//     emit(state.copyWith(authStatus: AuthStatus.unauthenticated));
//   }
//
//   _checkAuth(CheckAuth event, Emitter<AuthState> emit) async {
//     await Future.delayed(const Duration(seconds: 3));
//     String token = StorageRepository.getString("accessToken");
//     String phoneNumber = StorageRepository.getString("phoneNumber");
//     String password = StorageRepository.getString("password");
//     if (token.isNotEmpty) {
//       MyResponse myResponse = await authRepository.clientLogin(
//           phoneNumber: phoneNumber, password: password);
//       if (myResponse.errorMessage.isEmpty &&
//           myResponse.data.toString().isNotEmpty) {
//         emit(state.copyWith(authStatus: AuthStatus.authenticated));
//       } else {
//         emit(state.copyWith(authStatus: AuthStatus.unauthenticated));
//       }
//     } else {
//       emit(state.copyWith(authStatus: AuthStatus.unauthenticated));
//     }
//   }
// }
