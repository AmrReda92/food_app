import 'package:delivery_food_app/feature/order/presentation/ui/order_screen.dart';
import 'package:flutter/material.dart';



class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderScreen(),

    );
  }
}
