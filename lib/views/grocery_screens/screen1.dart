import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/vigies.png',
            height: 360,
            width: 513,
          ),
          const Text(
            // textAlign: TextAlign.center,
            'Welcome to Fresh Fruits',
            style: TextStyle(
              fontFamily: 'Inter',
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            // textAlign: TextAlign.center,
            'Grocery application',
            style: TextStyle(
              fontFamily: 'Inter',
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 29),
            child: Text(
              textAlign: TextAlign.center,
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
              style: TextStyle(
                fontFamily: 'Inter',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
