import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_app/views/grocery_screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const HomeScreen();
      }));
      // Navigator.of(context)
      //     .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  // @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: SystemUiOverlay.values);
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFEC54B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/icon.png'),
            ),
            Text(
              // textAlign: TextAlign.center,
              'Fresh Fruits',
              style: TextStyle(
                  fontFamily: 'Poppins', color: Colors.white, fontSize: 38),
            )
          ],
        ),
      ),
    );
  }
}
