import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_sign_in/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Wrap GetMaterialApp with ScreenUtilInit
    return ScreenUtilInit(
      // Design size from Figma or other design tools
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            // Apply screen util to text theme
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          getPages: routes,
          initialRoute: AppRoutes.splash,
          builder: (context, widget) {
            // Apply font scaling
            ScreenUtil.init(context);
            return MediaQuery(
              // Prevent system scaling
              data: MediaQuery.of(context),
              child: widget!,
            );
          },
        );
      },
    );
  }
}
