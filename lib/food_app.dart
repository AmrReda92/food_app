import 'package:delivery_food_app/feature/bottom_navigation_bar/ui/bottom_nav_bar_screen.dart';
import 'package:delivery_food_app/feature/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Poppins"
        ),
       debugShowCheckedModeBanner: false,
       home: BottomNavBarScreen(),
      ),
    );
  }
}
