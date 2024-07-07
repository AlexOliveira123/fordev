import 'package:get/get.dart';

import '../../ui/pages/pages.dart';
import '../../domain/usecases/usecases.dart';

class GetxSplashPresenter implements SplashPresenter {
  final LoadCurrentAccount loadCurrentAccount;
  var _navigateTo = Rx<String?>(null);
  Stream<String?> get navigateToStream => _navigateTo.stream;

  GetxSplashPresenter({required this.loadCurrentAccount});

  Future<void> checkAccount({int durationInSeconds = 2}) async {
    await Future.delayed(Duration(seconds: durationInSeconds));
    try {
      final account = await loadCurrentAccount.load();
      _navigateTo.value = account.token == null ? '/login' : '/surveys';
    } catch (error) {
      _navigateTo.value = '/login';
    }
  }
}
