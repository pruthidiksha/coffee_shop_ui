import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      padding: const EdgeInsets.only(top: 100, bottom: 40),
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
              opacity: 0.6)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Coffee Shop",
            style: GoogleFonts.pacifico(fontSize: 50, color: Colors.white),
          ),
          Column(
            children: [
              Text(
                "Feeling Low? Take a sip of coffee",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
              const SizedBox(
                height: 80,
              ),
              Material(
                  color: const Color(0xffe57734),
                  borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 50),
                    child: const Text(
                      "Get Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
