import 'package:delivery_food_app/core/models/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearch extends StatelessWidget {
  final String hintText ;
  const CustomSearch({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: Color(0xff4A43EC),
        filled: true,
        prefixIcon: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 7.w),
          child: SvgPicture.asset("assets/icons/search.svg"),
        ) ,
        suffixIcon: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 7.w),
          child: SvgPicture.asset("assets/icons/filterr.svg",),
        ),
        hintText: hintText ,
        hintStyle: AppTextStyles.font14,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ) ,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),

    );;;
  }
}
