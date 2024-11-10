import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:the_sign_in/ui/screen/splash/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.black),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 18.w,
                height: 18.w,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              ),
              Gap(18.w),
              Container(
                width: 18.w,
                height: 18.w,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
