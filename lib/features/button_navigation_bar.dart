import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruithub/core/helper/spacing.dart';
import 'package:fruithub/features/home/home_Screen.dart';

import 'bag/bag_screen.dart';

class BottomNavBarCustom extends StatefulWidget {
  const BottomNavBarCustom({super.key});

  @override
  _BottomNavBarCustomState createState() => _BottomNavBarCustomState();
}

class _BottomNavBarCustomState extends State<BottomNavBarCustom> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    Center(child: Text('❤️ archive Screen')),
    BagScreen(),
    Center(child: Text('❤️ Favorites Screen')),
    Center(child: Text('👤 Profile Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [

            Container(
              margin: EdgeInsets.only(bottom: 28.h),
              alignment: Alignment.center,
              width: 368.w,
              height: 68.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10.r,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(

                children: [
                  horizontalSpacing(10.w),
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: _currentIndex == 0
                          ? Colors.teal
                          : Colors.grey.shade400,
                    ),
                    onPressed: () => setState(() => _currentIndex = 0),
                  ),

                  IconButton(
                    icon: Icon(
                      Icons.archive,
                      color: _currentIndex == 1
                          ? Colors.teal
                          : Colors.grey.shade400,
                    ),
                    onPressed: () => setState(() => _currentIndex = 1),
                  ),
                  horizontalSpacing(160.w),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: _currentIndex == 3
                          ? Colors.teal
                          : Colors.grey.shade400,
                    ),
                    onPressed: () => setState(() => _currentIndex = 3),
                  ),
                  horizontalSpacing(10.w),
                  InkWell(
                    onTap: () => setState(() => _currentIndex = 4),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage:
                      const NetworkImage('https://i.pravatar.cc/300'),
                      backgroundColor: _currentIndex == 4
                          ? Colors.teal.withOpacity(0.5)
                          : Colors.transparent,
                    ),
                  ),
                ],
              ),
            ),


            Positioned(
              top: -15.h,
              child: GestureDetector(
                onTap: () => setState(() => _currentIndex = 2),
                child: ClipOval(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                    child: Container(

                      padding:  EdgeInsets.all(22.5.sp),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.50),
                        border: Border.all(
                          color: Colors.white.withOpacity(0),
                          width: 1.5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child:  CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.deepPurple,
                        child: Icon(
                          Icons.shopping_basket,
                          size: 30.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

