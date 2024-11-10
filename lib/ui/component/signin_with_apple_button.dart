import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:the_sign_in/generated/assets.dart';

class SignInWithAppleButton extends StatelessWidget {
  const SignInWithAppleButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate heights based on original proportions
    final buttonHeight = 0.067.sh; // 60/896 of screen height
    final iconWidth = 0.039.sw; // 16.23/414 of screen width
    final iconHeight = 0.022.sh; // 20/896 of screen height

    return Container(
      width: 374.w,
      height: buttonHeight,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.iconsApple,
            width: iconWidth,
            height: iconHeight,
          ),
          Gap(10.w),
          Text(
            'Sign in with Apple',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
