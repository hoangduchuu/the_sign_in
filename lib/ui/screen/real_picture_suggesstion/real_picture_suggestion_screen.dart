import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:the_sign_in/ui/component/blur_background.dart';
import 'package:the_sign_in/ui/component/custom_button.dart';
import 'package:the_sign_in/ui/component/header_text.dart';

class RealPictureSuggestionScreen extends StatelessWidget {
  const RealPictureSuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlurBackground(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(60.h),
                      const HeaderText(text: 'what do you look like,\nEmma?'),
                      Gap(48.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: SizedBox(
                          width: double.infinity,
                          child: Opacity(
                            opacity: 0.50,
                            child: AutoSizeText(
                              'Uploading your picture shows that you\'re a real\nperson and will help you get up to 10x more invites',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontFamily: 'SFProText',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.07,
                                height: 1.5,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ),
                      ),
                      Gap(40.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: SizedBox(
                          width: double.infinity,
                          child: Opacity(
                            opacity: 0.50,
                            child: AutoSizeText(
                              'You can change this later in your \'Profile\' section.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.sp,
                                fontFamily: 'SFProText',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.1,
                                height: 1.5,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                bottom: 50.h,
              ),
              child: CustomButton(
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
            ),
          ],
        ),
      ),
    );
  }
}
