import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:langtalk/ui/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, a) {

        // Use GetMaterial App instead of Material App when using GetX
        return    MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DashBoardPage(),
        );
      },
    );
  }
}

