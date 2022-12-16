import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../global/globals.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  int _lastIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 8,
            activeColor: Theme.of(context).colorScheme.secondary,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.6),
            color: Theme.of(context).primaryColor,
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
              ),
              GButton(
                icon: Icons.graphic_eq_rounded,
                text: "Stats",
              ),
              GButton(
                icon: Icons.search_rounded,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person_rounded,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _lastIndex = _selectedIndex;
                _selectedIndex = index;
              });
              onPageChanged(context, index);
            },
          ),
        ),
      ),
    );
  }
}

onPageChanged(BuildContext context, int index) {
  return Navigator(

  );
  
  
  /*return Navigator(
    onGenerateRoute: (settings) {
      debugPrint(index.toString());
      Widget page = pages[index];
      debugPrint(page.toString());
      
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          final tween = Tween(begin: begin, end: end);
          final offsetAnimation = animation.drive(tween);
          
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 2000),
      );
    },
  );*/
}
