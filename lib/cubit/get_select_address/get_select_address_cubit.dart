import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ishbor/data/models/form/form_status_model.dart';
import 'package:ishbor/data/shared_pref/storage.dart';

part 'get_select_address_state.dart';

class GetSelectAddressCubit extends Cubit<GetSelectAddressState> {
  GetSelectAddressCubit()
      : super(
          const GetSelectAddressState(
            status: FormStatus.pure,
            errorText: "",
            isAuth: false,
          ),
        );

  fetchSelectAddress() {
    emit(state.copyWith(status: FormStatus.gettingSelectAddressInProgress));
    bool isAuth = StorageRepository.getBool("isAuth");
    if (isAuth != null) {
      emit(state.copyWith(
          status: FormStatus.gettingSelectAddressInSuccess, isAuth: true));
    } else {
      emit(state.copyWith(
        status: FormStatus.gettingSelectAddressInFailure,
        isAuth: false,
        errorText: "No Auth",
      ));
    }
  }
}
