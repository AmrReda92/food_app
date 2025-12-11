import 'package:delivery_food_app/core/models/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
    return  ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: icons.length,
        itemBuilder: (context,index){
          return  Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: Container(
              color: Colors.green,
              width: 86.w,
              height: 96.h,
              child: Center(child: SvgPicture.asset(icons[index])
              ),
            ),
          );
        }
    );
  }
}
