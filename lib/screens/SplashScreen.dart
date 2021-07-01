import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vendr/screens/AfterSplash.dart';
import 'package:vendr/utils/colors.dart';
import 'package:vendr/utils/images.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>AfterSplash())));
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: c_white,
      body: Align(
        alignment: Alignment.centerRight,
        child: Image.asset("images/"),),
    );
  }
}