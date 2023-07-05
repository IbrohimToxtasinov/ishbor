part of 'get_select_address_cubit.dart';

class GetSelectAddressState extends Equatable {
  final FormStatus status;
  final String errorText;
  final bool isAuth;

  const GetSelectAddressState({
    required this.status,
    required this.isAuth,
    required this.errorText,
  });

  GetSelectAddressState copyWith({
    FormStatus? status,
    String? errorText,
    bool? isAuth,
  }) =>
      GetSelectAddressState(
        status: status ?? this.status,
        errorText: errorText ?? this.errorText,
        isAuth: isAuth ?? this.isAuth,
      );

  @override
  List<dynamic> get props => [status, errorText, isAuth];
}
