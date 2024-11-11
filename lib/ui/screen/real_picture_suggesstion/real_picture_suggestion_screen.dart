import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:the_sign_in/generated/assets.dart';
import 'package:the_sign_in/ui/component/blur_background.dart';
import 'package:the_sign_in/ui/component/custom_button.dart';

class RealPictureSuggestionScreen extends StatelessWidget {
  const RealPictureSuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlurBackground(
        backgroundImage: Assets.imagesBackground,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              Gap(kBottomNavigationBarHeight.h),
              AutoSizeText(
                'what do you look like,\nEmma?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontFamily: 'Bodoni72',
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
              ),
              Gap(48.h),
              SizedBox(
                width: double.infinity,
                child: Opacity(
                  opacity: 0.50,
                  child: AutoSizeText(
                    'Uploading your picture shows that you’re a real\nperson and will help you get up to 10x more invites',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 2,
                  ),
                ),
              ),
              Gap(40.h),
              SizedBox(
                width: double.infinity,
                child: Opacity(
                    opacity: 0.50,
                    child: AutoSizeText(
                      'You can change this later in your ‘Profile’ section.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 1,
                    )),
              ),
              const Spacer(),
              CustomButton(
                text: 'Go to camera roll',
                onPressed: () {
                  Get.dialog(Dialog(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: CustomButton(
                        text: 'Go to camera roll function',
                        onPressed: () {},
                      ),
                    ),
                  ));
                },
                centerText: true,
                showArrow: false,
              ),
              Gap(44.h),
            ],
          ),
        ),
      ),
    );
  }
}
