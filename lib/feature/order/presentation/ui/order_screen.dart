import 'package:delivery_food_app/feature/order/presentation/ui/widget/continar_order.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topCenter,
                    end: AlignmentGeometry.bottomCenter,

                    colors: [
                      const Color.fromARGB(255, 255, 255, 255),
                      const Color.fromARGB(255, 237, 252, 139),
                    ],
                  ),
                ),

              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back, size: 35),
                      Text(
                        "Shopping Cart",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(Icons.delete, size: 35),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20),
                    child: Image.asset(
                      "assets/images/image slider.png",
                      height: 300, // ارتفاع الصورة بالكامل
                      fit: BoxFit.cover,
                    ),
                  ),
                  ContinarOrder(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
