import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:the_sign_in/generated/assets.dart';
import 'package:the_sign_in/ui/component/signin_with_apple_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Container(
          width: 1.sw,
          height: 1.sh,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.imagesBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Gap(100.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AutoSizeText(
                  'share luxurious\nexperiences',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.sp,
                    // Original design spec
                    fontFamily: 'Bodoni 72',
                    fontWeight: FontWeight.w400,
                    height: 1.1,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const SignInWithAppleButton(),
              ),
              Gap(16.h),
              Text(
                'By continuing you agree to all T&C',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.sp,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(24.h),
            ],
          ),
        ),
      ),
    );
  }
}
