import 'package:flutter/material.dart';
import 'package:the_sign_in/generated/assets.dart';
import 'package:the_sign_in/ui/component/blur_background.dart';

class PreferenceSettingScreen extends StatelessWidget {
  const PreferenceSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlurBackground(
        backgroundImage: Assets.imagesBackground,
        child: Container(),
      ),
    );
  }
}
