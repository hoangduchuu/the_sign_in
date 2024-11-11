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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(80.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AutoSizeText(
                  'share luxurious\nexperiences',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.sp,
                    fontFamily: 'Bodoni72',
                    fontWeight: FontWeight.w400,
                    height: 1.1,
                    letterSpacing: -0.5,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
              const Spacer(),
              const SignInWithAppleButton(),
              Gap(12.h),
              Center(
                child: Text(
                  'By continuing you agree to all T&C',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.2,
                  ),
                ),
              ),
              Gap(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
