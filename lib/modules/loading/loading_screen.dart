import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/styles/color.dart';
import '../login/login_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Image.asset('assets/images/logoDark.png',height: 350,width: 350,),
      ),
    );
  }
}
