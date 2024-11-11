import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInput extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final TextStyle? hintStyle;

  const CustomInput({
    super.key,
    this.hintText,
    this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.suffix,
    this.validator,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 44.h,
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            validator: validator,
            style: TextStyle(
              fontFamily: 'SFProText',
              fontSize: 16.sp,
              color: Colors.white, // FFFFFF 100%
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              isDense: true,
              hintText: hintText,
              hintStyle: hintStyle ??
                  TextStyle(
                    fontFamily: 'SFProText',
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
              filled: true,
              fillColor: const Color(0xFF000000).withOpacity(0.25),
              // 000000 25%
              suffixIcon: suffix,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 15.h,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.r),
                borderSide: const BorderSide(color: Colors.red),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
