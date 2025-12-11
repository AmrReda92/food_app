import 'package:delivery_food_app/core/models/app_images.dart';
import 'package:delivery_food_app/core/models/app_text_styles.dart';
import 'package:delivery_food_app/core/widgets/custom_food_item.dart';
import 'package:delivery_food_app/core/widgets/custom_search.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                   child: Image.asset(AppImages.profile),
                 ),
                  SizedBox(width: 47.w,),
                  Column(
                    children: [
                      Text("Your Location",style: AppTextStyles.font13),
                      Row(
                        children: [
                          SvgPicture.asset(AppImages.location),
                          SizedBox(width: 2.w,),
                          Text("Savar, Dhaka",style: AppTextStyles.font15,)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 51.w,),
                  Container(
                    color: Colors.transparent,
                    child: Center(child: SvgPicture.asset(AppImages.bell)
                    ),

                  )
                ],
              ),
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
                  Text("View All",style: AppTextStyles.font13,),

                ],
              ),
              SizedBox(height: 12.h,),
              Row(
                children: [
                  Expanded(child: Image.asset(AppImages.burgerSmall)),
                  Expanded(child: Image.asset(AppImages.pizza))
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("burger")),
                  Expanded(child: Text("pizza")),

                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
