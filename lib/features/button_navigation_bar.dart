import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/theming/colors.dart';
import 'bag/bag_screen.dart';
import 'home/home_Screen.dart';

class BottomNavBarCustom extends StatefulWidget {
  @override
  _BottomNavBarCustomState createState() => _BottomNavBarCustomState();
}

class _BottomNavBarCustomState extends State<BottomNavBarCustom> {
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const BagScreen(),
    const HomeScreen(),
    const HomeScreen(),

  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xffffffff).withOpacity(0.85),
          currentIndex: _currentIndex,

          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },

          items: [

            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, size: 30,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: const BoxDecoration(
                  color: ColorsManager.parple,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(5),
                child: const Icon(Icons.shopping_bag_outlined, size: 50,
                    color: ColorsManager.lightBlue
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.values[0],
        ),
      ),
    );
  }
}