import 'package:get/get.dart';
import 'package:the_sign_in/routes/app_navigators.dart';

import 'splash_binding.dart';

class SplashController extends GetxController {
  final SplashBinding binding = SplashBinding();

  @override
  void onReady() {
    super.onReady();
    checkSession();
  }

  Future<void> checkSession() async {
    Future.delayed(const Duration(seconds: 2), () {
      AppNavigators.gotoSignin();
    });
  }
}
