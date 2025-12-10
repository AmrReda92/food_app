import 'package:delivery_food_app/core/models/app_images.dart';
import 'package:delivery_food_app/core/models/app_text_styles.dart';
import 'package:delivery_food_app/core/widgets/custom_search.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});

  static final icons = [
    AppImages.pizzaIcon,
    AppImages.drinkIcon,
    AppImages.burgerIcon,
    AppImages.riceIcon,
  ];

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
                child: ListView.builder(
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
                ),
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
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBar(it),
      //     items: [
      //       BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.homeIcon,width: 28.w,height: 28.h,colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),),label: "Home",),
      //       BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.favouriteIcon,width: 28.w,height: 28.h,),label: "Favourite"),
      //       BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.cartIcon,width: 28.w,height: 28.h,),label: "Cart",),
      //       BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.profileIcon,width: 28.w,height: 28.h,),label: "Profile"),
      //
      //     ]
      // ),
    );
  }
}
