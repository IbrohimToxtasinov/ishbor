
import 'package:ishbor/data/shared_pref/storage.dart';

class AuthRepository {
  /// Client Login
  Future<void> clientLogin({
    required String phoneNumber,
    required String password,
  }) async {
    await StorageRepository.getInstance();
    await StorageRepository.putString('phoneNumber', phoneNumber);
    await StorageRepository.putString('password', password);
  }

  /// Client Register
  Future<void> clientRegister({
    required String phoneNumber,
    required String password,
    required String name,
    required String country,
    required bool isWorker,
  }) async {
    await StorageRepository.getInstance();
    await StorageRepository.putString('phoneNumber', phoneNumber);
    await StorageRepository.putString('password', password);
    await StorageRepository.putString('name', password);
    await StorageRepository.putString('country', country);
    await StorageRepository.putBool('isWorker', isWorker);
  }

// /// Client Log Out
// void logOut() async {
//   await StorageRepository.getInstance();
//   await StorageRepository.deleteString('accessToken');
//   await StorageRepository.deleteString('phoneNumber');
//   await StorageRepository.deleteString('password');
//   await StorageRepository.deleteString("title");
//   await StorageRepository.deleteString("subtitle");
//   await StorageRepository.deleteDouble("lat");
//   await StorageRepository.deleteDouble("long");
// }

// Future<int> deleteAllAddresses() => LocalDatabase.deleteAllAddresses();
}
