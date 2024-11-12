import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            borderRadius: BorderRadius.circular(25.r),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 14.h,
          ),
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
                  ),
                ),
              ),
            // Right-aligned arrow (only if showArrow is true)
            if (showArrow)
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Center(
                  child: Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 14.sp,
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
