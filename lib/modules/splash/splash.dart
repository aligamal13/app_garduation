import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pro_graduation/helper/local_cash_helper/cash_hlper.dart';
import 'package:pro_graduation/modules/auth/login/login_screen.dart';
import 'package:pro_graduation/modules/bottom/bottom_navgtion.dart';
import 'package:pro_graduation/recources/color_managr.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();

  }

  @override
  void initState() {

     bool save=Cash_Hlper.sharedPreferences!.containsKey('token');

    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () => Navigator.push(context,
        MaterialPageRoute(builder: (context) {
      return save?BottomNavgtion():LoginScreen();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.appsplash,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Image.asset('img/splash.jpg',fit: BoxFit.fill,height: 600,),
            SizedBox(height: MediaQuery.of(context).size.height * .03,),
            const Align(
                alignment: Alignment.center,
                child :Text('M8^ara\nApp' , textAlign: TextAlign.center ,
                  style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25,
                      color:Colors.white
                  )
                  ,))
          ],
        ),
      ),
    );
  }
}