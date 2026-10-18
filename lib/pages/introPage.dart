// TODO Implement this library.
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/pages/homePage.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
            padding: const EdgeInsets.only(top: 130, left: 90, right: 80),
            child: Container(
              height: 250,
              margin: EdgeInsets.only(bottom: 0),
              child: Image.asset(
                'assets/avocado_rmbg.png',
              ),
            ),
          ),
          // we deliver groceries at your grocerise at your doorstep
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Fresh items everyday
          Text(
            "Fresh items everyday",
            style: TextStyle(
              color:Colors.grey[600],

            ),
          ),
          const Spacer(),
          // get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context){
                return const HomePage();
              }),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: const Text(
                "Get started",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),

            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
