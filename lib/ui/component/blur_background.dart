import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlurBackground extends StatelessWidget {
  final String backgroundImage;
  final double blurSigma;
  final List<Color> gradientColors;
  final List<double> gradientStops;
  final Widget? child;

  const BlurBackground({
    super.key,
    required this.backgroundImage,
    this.blurSigma = 100,
    this.gradientColors = const [
      Color(0xFF4A4A4A),
      Color(0xFF846A6A),
      Color(0xFF6A7C99),
    ],
    this.gradientStops = const [0.2, 0.6, 1.0],
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 1.sh,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Blur effect with horizontal gradient
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: blurSigma,
              sigmaY: blurSigma,
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: gradientColors.map((color) => color.withOpacity(0.25)).toList(),
                  stops: gradientStops,
                ),
              ),
            ),
          ),
          // Vertical gradient overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.3),
                  Colors.transparent,
                  Colors.black.withOpacity(0.2),
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
          // Child widget if provided
          if (child != null) child!,
        ],
      ),
    );
  }
}