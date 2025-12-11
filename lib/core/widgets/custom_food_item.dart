import 'package:delivery_food_app/core/models/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomFoodItem extends StatefulWidget {
  const CustomFoodItem({super.key});

  static final icons = [
    AppImages.pizzaIcon,
    AppImages.drinkIcon,
    AppImages.burgerIcon,
    AppImages.riceIcon,
  ];

  @override
  State<CustomFoodItem> createState() => _CustomFoodItemState();
}

class _CustomFoodItemState extends State<CustomFoodItem> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: CustomFoodItem.icons.length,
        itemBuilder: (context,index){
          final selected = index == currentIndex ;
          return  Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: GestureDetector(
              onTap: (){
                setState(() {
                currentIndex=index;
                });
              },
              child: Container(
                color: selected? Colors.green : Color(0xffE5E5E5) ,
                width: 86.w,
                height: 96.h,
                child: Center(child: SvgPicture.asset(CustomFoodItem.icons[index])
                ),
              ),
            ),
          );
        }
    );
  }
}
