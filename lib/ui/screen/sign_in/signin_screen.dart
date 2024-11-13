import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:the_sign_in/generated/assets.dart';
import 'package:the_sign_in/ui/component/signin_with_apple_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(Assets.imagesBackground), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(100.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Text(
                'share luxurious\nexperiences',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.sp,
                  fontFamily: 'Bodoni72',
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                ),
              ),
            ),
            const Spacer(),
            const SignInWithAppleButton(),
            Gap(16.h),
            Center(
              child: Text(
                'By continuing you agree to all T&C',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'SFProText',
                  fontSize: 13.sp,
                  letterSpacing: 0.75,
                ),
              ),
            ),
            Gap(24.h),
          ],
        ),
      ),
    );
  }
}
