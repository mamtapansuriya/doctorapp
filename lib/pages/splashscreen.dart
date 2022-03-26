import 'dart:async';

import 'package:doctorapp/pages/homepage.dart';
import 'package:doctorapp/pages/specialistpage.dart';
import 'package:doctorapp/utils/size_utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.push(
        (context),
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeUtils().sizerInit(context);

    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Color(0xff00958C),
        height: SizeUtils.screenHeight,
        width: SizeUtils.screenWidth,
        child: const Center(
            child: Text(
          "Coming Soon....",
          style: TextStyle(fontSize: 30, color: Color(0xffF5B6BA)),
        )),
      ),
    ));
  }
}
