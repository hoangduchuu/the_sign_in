import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:the_sign_in/routes/app_navigators.dart';
import 'package:the_sign_in/ui/component/blur_background.dart';
import 'package:the_sign_in/ui/component/custom_button.dart';
import 'package:the_sign_in/ui/component/custom_input.dart';
import 'package:the_sign_in/ui/component/header_text.dart';

class UsernameInputScreen extends StatelessWidget {
  UsernameInputScreen({super.key});

  final TextEditingController nameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      backgroundColor: Colors.black,
      body: BlurBackground(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: <Widget>[
                      Gap(60.h),
                      const HeaderText(text: 'what should we call\nyou?'),
                      Gap(28.h),
                      CustomInput(
                        hintText: 'Your name...',
                        controller: nameTextController,
                        keyboardType: TextInputType.text,
                      ),
                      Gap(8.h),
                      Opacity(
                        opacity: 0.50,
                        child: Text(
                          'This is the name that will appear on your profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.9,
                            height: 1.2,
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
                  bottom: 50.h,
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
