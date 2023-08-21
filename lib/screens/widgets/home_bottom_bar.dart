import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
          color: const Color(0xff212325),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 8)
          ]
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home, size: 35, color: Color(0xffe57734),),
          Icon(Icons.favorite_outline, size: 35, color: Colors.white),
          Icon(Icons.notifications, size: 35, color: Colors.white,),
          Icon(Icons.person, size: 35, color: Colors.white,),
        ],
      ),
    );
  }
}
