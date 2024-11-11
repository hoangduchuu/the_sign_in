import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:the_sign_in/generated/assets.dart';
import 'package:the_sign_in/routes/app_navigators.dart';
import 'package:the_sign_in/ui/component/blur_background.dart';
import 'package:the_sign_in/ui/component/custom_button.dart';
import 'package:the_sign_in/ui/component/custom_input.dart';

class UsernameInputScreen extends StatelessWidget {
  const UsernameInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      backgroundColor: Colors.black,
      body: BlurBackground(
        backgroundImage: Assets.imagesBackground,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Gap(kBottomNavigationBarHeight.h),
                      Text(
                        'what should we call you?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontFamily: 'Bodoni72',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Gap(28.h),
                      CustomInput(
                        hintText: 'Your name...',
                        controller: TextEditingController(),
                        keyboardType: TextInputType.text,
                      ),
                      Gap(16.h),
                      const Opacity(
                        opacity: 0.50,
                        child: Text(
                          'This is the name that will appear on your profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (!isKeyboardVisible)
              Container(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                  bottom: MediaQuery.of(context).padding.bottom + 24.h,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'I am a woman',
                        onPressed: () {
                          AppNavigators.gotoPreferenceSetting();
                        },
                      ),
                    ),
                    Gap(10.w),
                    Expanded(
                      child: CustomButton(
                        text: 'I am a man',
                        onPressed: () {
                          AppNavigators.gotoPreferenceSetting();
                        },
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}