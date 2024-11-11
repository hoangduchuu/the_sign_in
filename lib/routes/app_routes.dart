import 'package:get/get.dart';
import 'package:the_sign_in/ui/screen/preference_setting/preference_setting_screen.dart';
import 'package:the_sign_in/ui/screen/real_picture_suggesstion/real_picture_suggestion_screen.dart';
import 'package:the_sign_in/ui/screen/sign_in/signin_screen.dart';
import 'package:the_sign_in/ui/screen/splash/splash_binding.dart';
import 'package:the_sign_in/ui/screen/splash/splash_screen.dart';
import 'package:the_sign_in/ui/screen/username_input/username_input_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String signIn = '/sign_in';
  static const String usernameInput = '/username_input';
  static const String preferenceSetting = '/preference_setting';
  static const String realPictureSuggestion = '/real_picture_suggetion';
}

var routes = [
  GetPage(
    name: AppRoutes.splash,
    page: () => const SplashScreen(),
    bindings: [SplashBinding()],
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.signIn,
    page: () => const SignInScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.usernameInput,
    page: () => UsernameInputScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.preferenceSetting,
    page: () => PreferenceSettingScreen(),
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: AppRoutes.realPictureSuggestion,
    page: () => const RealPictureSuggestionScreen(),
    transition: Transition.fadeIn,
  ),
];
