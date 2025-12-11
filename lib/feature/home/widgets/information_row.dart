import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/models/app_images.dart';
import '../../../core/models/app_text_styles.dart';

class InformationRow extends StatelessWidget {
  const InformationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
