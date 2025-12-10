import 'package:delivery_food_app/core/models/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFoodItem extends StatelessWidget {
  const CustomFoodItem({super.key});

  static final icons = [
    AppImages.pizzaIcon,
    AppImages.drinkIcon,
    AppImages.burgerIcon,
    AppImages.riceIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86.w,
      height: 96.h,
      color: Colors.green,
    );
  }
}
