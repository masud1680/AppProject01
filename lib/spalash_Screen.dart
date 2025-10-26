import 'package:flutter/material.dart';
import 'package:project_01/home.dart';
import 'package:project_01/main_home.dart';
import 'package:project_01/user_login_screen.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void delay()async{
    await Future.delayed(Duration(seconds: 2));
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
  }

  @override
  void initState() {
    // TODO: implement initState
    delay();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
            image: AssetImage("assets/CoderAngon.png"),
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}
