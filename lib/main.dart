import 'package:delivery_food_app/food_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main()async {

  runApp(const FoodApp());
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
}

