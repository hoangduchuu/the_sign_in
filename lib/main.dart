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
        designSize: const Size(414, 896),
        minTextAdapt: true,
        splitScreenMode: false,
        rebuildFactor: (_, __) => true,
        builder: (context, child) {
          return GetMaterialApp(
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child!,
              );
            },
            theme: ThemeData(
              colorScheme: const ColorScheme.light(),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            debugShowCheckedModeBanner: false,
            // localizationsDelegates: [
            //   GlobalMaterialLocalizations.delegate,
            //   MonthYearPickerLocalizations.delegate,
            // ],
            getPages: routes,
            initialRoute: AppRoutes.splash,
          );
        });
  }
}
