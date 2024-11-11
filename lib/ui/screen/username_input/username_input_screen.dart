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
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlurBackground(
        backgroundImage: Assets.imagesBackground,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Gap(kBottomNavigationBarHeight.h),
              Text(
                'what should we call you?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontFamily: 'Bodoni 72',
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
              const SizedBox(
                width: 374,
                child: Opacity(
                  opacity: 0.50,
                  child: Text(
                    'This is the name that will appear on your profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
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
              Gap(44.h),
            ],
          ),
        ),
      ),
    );
  }
}
