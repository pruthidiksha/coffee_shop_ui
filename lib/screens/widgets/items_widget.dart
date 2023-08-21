import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../single_item_screen.dart';

class ItemsWidget extends StatelessWidget {
  List img = ["Latte", "Espresso", "Black Coffee", "Cold Coffee"];

  ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: 150 / 195,
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff212325),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 8)
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {  Navigator.push(context, MaterialPageRoute(builder: (context) => SingleItemScreen(img[i])));
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/images/${img[i]}.png",
                        width: 120,
                        height: 120,
                        fit: BoxFit.contain,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          img[i],
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Best Coffee",
                          style: TextStyle(color: Colors.white60, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "\$30",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xffe57734),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Icon(CupertinoIcons.add, size: 20, color: Colors.white,),
                    )
                  ],
                )
              ],
            ),
          )
      ],
    );
    ;
  }
}
