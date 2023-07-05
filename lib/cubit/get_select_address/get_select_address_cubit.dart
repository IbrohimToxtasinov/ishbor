// import 'package:bloc/bloc.dart';
// import 'package:dilhush_fayz/data/models/form_status.dart';
// import 'package:dilhush_fayz/data/shared_pref/storage.dart';
// import 'package:equatable/equatable.dart';
// import 'package:ishbor/data/models/form/form_status_model.dart';
// import 'package:ishbor/data/shared_pref/storage.dart';
//
// part 'get_select_address_state.dart';
//
// class GetSelectAddressCubit extends Cubit<GetSelectAddressState> {
//   GetSelectAddressCubit()
//       : super(
//           const GetSelectAddressState(
//             status: FormStatus.pure,
//             errorText: "",
//             isAuth: "",
//             subTitle: '',
//             lat: 0.0,
//             long: 0.0,
//           ),
//         );
//
//   fetchSelectAddress() {
//     emit(state.copyWith(status: FormStatus.gettingSelectAddressInProgress));
//     String isAuth = StorageRepository.getbool("isAuth");
//     if (isAuth != null) {
//       emit(state.copyWith(
//         status: FormStatus.gettingSelectAddressInSuccess,
//       ));
//     } else {
//       emit(state.copyWith(
//         status: FormStatus.gettingSelectAddressInFailure,
//         errorText: "Address chaqirishda xatolik !!!",
//       ));
//     }
//   }
// }
