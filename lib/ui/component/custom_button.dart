import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_sign_in/generated/assets.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final bool centerText;
  final bool showArrow; // Add this parameter

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.width,
    this.centerText = false,
    this.showArrow = true, // Default to true to maintain current behavior
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 60.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60.r),
          ),
          padding: centerText != true ? EdgeInsets.only(left: 24.w, right: 20.w) : null,
        ),
        child: Stack(
          children: [
            // Text - either centered or start-aligned
            if (centerText)
              Center(
                child: AutoSizeText(
                  text,
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Colors.black,
                    letterSpacing: 1.1,
                    height: 1.0,
                  ),
                ),
              )
            else
              Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  text,
                  style: TextStyle(
                    fontFamily: 'SFProText',
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: Colors.black,
                    letterSpacing: 1.1,
                    height: 1.0,
                  ),
                ),
              ),
            // Right-aligned arrow (only if showArrow is true)
            if (showArrow)
              Positioned(
                right: 0,
                top: 0.h,
                bottom: 0.h,
                child: SvgPicture.asset(
                  Assets.iconsArrowNext,
                  width: 8.50.w,
                  height: 14.h,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
