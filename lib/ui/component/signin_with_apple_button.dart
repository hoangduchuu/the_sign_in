import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:the_sign_in/generated/assets.dart';
import 'package:the_sign_in/routes/app_navigators.dart';

class SignInWithAppleButton extends StatelessWidget {
  const SignInWithAppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        width: double.infinity,  // Fill available width within padding
        height: 44.h,  // Standard iOS button height
        child: ElevatedButton(
          onPressed: () {
            AppNavigators.gotoPreferenceSetting();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 0,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.r), // Half of height
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.iconsApple,
                width: 16.w,
                height: 16.h,  // Adjusted to match iOS
                color: Colors.black,
              ),
              SizedBox(width: 6.w),
              Text(
                'Sign in with Apple',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.sp,  // iOS standard font size
                  fontFamily: 'SF Pro Text',  // Exact iOS font
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.24,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}