import 'package:get/get.dart';

import 'app_routes.dart';

class AppNavigators {
  static Future<dynamic>? gotoSplash() {
    return Get.offAllNamed(AppRoutes.splash);
  }

  static Future<dynamic>? gotoSignin() {
    return Get.toNamed(AppRoutes.signIn);
  }

  static Future<dynamic>? gotoUserNameInput() {
    return Get.offAllNamed(AppRoutes.usernameInput);
  }

  static Future<dynamic>? gotoPreferenceSetting() {
    return Get.toNamed(AppRoutes.preferenceSetting);
  }

  static Future<dynamic>? gotoRealPictureSuggestion() {
    return Get.offAllNamed(AppRoutes.realPictureSuggestion);
  }
}
