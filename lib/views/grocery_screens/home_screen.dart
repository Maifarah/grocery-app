import 'package:flutter/material.dart';
import 'package:grocery_app/views/grocery_screens/screen1.dart';
import 'package:grocery_app/views/grocery_screens/screen2.dart';
import 'package:grocery_app/views/grocery_screens/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller_ = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller_.addListener(() {
      int page = controller_.page?.round() ?? 0;
      if (currentPage != page) {
        setState(() {
          currentPage = page;
        });
      }
    });
  }

  @override
  void dispose() {
    controller_.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.arrow_back)],
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 540,
            child: PageView(
              controller: controller_,
              children: const [
                Screen1(),
                Screen2(),
                Screen3(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
            controller: controller_,
            count: 3,
            effect: const ExpandingDotsEffect(
                dotColor: Color(0xffF2F2F2),
                activeDotColor: Color(0xff12B76A),
                dotHeight: 6,
                dotWidth: 6),
          ),
          currentPage == 2
              ? Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 318,
                      height: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Screen3(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Text(
                          'Create an account',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 318,
                      height: 60,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 318,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Screen3(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFEC54B),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
