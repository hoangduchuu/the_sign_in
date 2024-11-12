import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderText extends StatelessWidget {
  final String text;

  const HeaderText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: double.infinity,
        child: AutoSizeText(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.sp,
            fontFamily: 'Bodoni72',
            fontWeight: FontWeight.w400,
          ),
          maxLines: 2,
          minFontSize: 32.sp.toInt().toDouble(),
          stepGranularity: 1,
        ),
      ),
    );
  }
}
