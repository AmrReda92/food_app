import 'package:delivery_food_app/core/models/app_images.dart';
import 'package:delivery_food_app/core/models/app_text_styles.dart';
import 'package:delivery_food_app/core/widgets/custom_food_item.dart';
import 'package:delivery_food_app/core/widgets/custom_search.dart';
import 'package:delivery_food_app/feature/home/widgets/information_row.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              InformationRow(),
              SizedBox(height: 36.h,),
              CustomSearch(hintText: "Search your food",),
              SizedBox(height: 37.h,),
              SizedBox(
                height: 96.h,
                child: CustomFoodItem()
              ),
              SizedBox(height: 22.h,),
              Image.asset(AppImages.burgerBig,),
              SizedBox(height: 16.h,),
              DotsIndicator(
               dotsCount: 3,
               position: 0,
          ),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Items",style: AppTextStyles.font15,),
                  Text("View All",style: AppTextStyles.font13.copyWith(color: Color(0xff606060)),),

                ],
              ),
              SizedBox(height: 12.h,),
              Expanded(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(AppImages.burgerSmall),
                        Row(
                          children: [
                            Text("     "),
                            Text("BURGER",style:AppTextStyles.font15),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 30.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(AppImages.pizza),
                        Row(
                          children: [
                            Text("     "),
                            Text("PIZZA",style: AppTextStyles.font15,),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
