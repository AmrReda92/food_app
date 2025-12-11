import 'package:delivery_food_app/core/models/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearch extends StatelessWidget {
  final String hintText ;
  const CustomSearch({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: Color(0xff4A43EC),
        borderRadius: BorderRadius.circular(100.r)
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 27.w),
        child: Row(
          children: [
            SizedBox(
              width: 22.w,
              height: 22.h,
              child: SvgPicture.asset("assets/icons/search.svg"),
            ),
            SizedBox(width: 10.w,),
            Expanded(
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText ,
                  hintStyle: AppTextStyles.font14,
                ),
              ),
            ),
            SizedBox(width: 12.w,),
            SizedBox(
              height: 22.h,
              width: 22.w,
              child:SvgPicture.asset("assets/icons/filterr.svg",),
            )
          ],
        ),
      ),
    );
  }
}
