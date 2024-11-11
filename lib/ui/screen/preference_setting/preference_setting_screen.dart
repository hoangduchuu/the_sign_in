import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:the_sign_in/generated/assets.dart';
import 'package:the_sign_in/routes/app_navigators.dart';
import 'package:the_sign_in/ui/component/blur_background.dart';
import 'package:the_sign_in/ui/component/custom_button.dart';
import 'package:the_sign_in/ui/component/custom_input.dart';
import 'package:the_sign_in/ui/screen/preference_setting/widget/invite_preference_checkbox_widget.dart';

class PreferenceSettingScreen extends StatelessWidget {
  const PreferenceSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return Scaffold(
      backgroundColor: Colors.black,
      body: BlurBackground(
        backgroundImage: Assets.imagesBackground,
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Gap(20.h),
                        SizedBox(
                          width: double.infinity,
                          child: AutoSizeText(
                            'what are your invite\npreferences?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.sp,
                              fontFamily: 'Bodoni72',
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 2,
                          ),
                        ),
                        Gap(47.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          width: double.infinity,
                          child: Text(
                            'I want to receive invites in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Gap(12.h),
                        CustomInput(
                          hintText: 'City...',
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16.sp,
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.w500,
                          ),
                          controller: TextEditingController(),
                          keyboardType: TextInputType.text,
                        ),
                        Gap(28.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          width: double.infinity,
                          child: Text(
                            'I want to receive invites in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Gap(12.h),
                        const InvitePreferencesSection(),
                        Gap(20.h),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          width: double.infinity,
                          child: Opacity(
                            opacity: 0.50,
                            child: AutoSizeText(
                              'You can change your invite preferences later, from\nyour \'Profile\' section.',
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
                      ],
                    ),
                  ),
                ),
              ),
              if (!isKeyboardVisible) // Only show button when keyboard is not visible
                Container(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: MediaQuery.of(context).padding.bottom + 44.h,
                  ),
                  child: CustomButton(
                    text: 'Just one more thing…',
                    onPressed: () {
                      AppNavigators.gotoRealPictureSuggestion();
                    },
                    centerText: true,
                  ),
                ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}