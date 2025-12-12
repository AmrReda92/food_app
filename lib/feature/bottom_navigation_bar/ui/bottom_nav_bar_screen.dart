import 'package:delivery_food_app/feature/home/ui/home_screen.dart';
import 'package:delivery_food_app/feature/order/presentation/ui/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/models/app_images.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex =0 ;
  List<Widget> screens = [
    HomeScreen(),
    OrderScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff4A43EC),
          unselectedItemColor: Color(0xff242424),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,
              color:currentIndex == 0 ? Color(0xff4A43EC) :Color(0xff242424),
            )
                ,label: "HOME"),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.shoppingIcon,
              colorFilter: ColorFilter.mode(currentIndex == 1 ? Color(0xff4A43EC) :Color(0xff242424),BlendMode.srcIn,)
            ),
              label: "ORDER",
            ),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.chatIcon,
              colorFilter: ColorFilter.mode(currentIndex == 2 ? Color(0xff4A43EC) :Color(0xff242424),BlendMode.srcIn,)
            ),
                label: "INBOX"
            ),
            BottomNavigationBarItem(icon: SvgPicture.asset(AppImages.profileIcon,
                colorFilter: ColorFilter.mode(currentIndex == 3 ? Color(0xff4A43EC) :Color(0xff242424),BlendMode.srcIn,)

            ),
                label: "PROFILE"),
          ]
      ),
      body: screens[currentIndex],
    );
  }
}
